
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csi2rx_priv {int num_lanes; unsigned int* lanes; unsigned int max_lanes; unsigned int max_streams; int p_clk; int * pixel_clk; int sys_clk; scalar_t__ base; int source_subdev; } ;
typedef int lanes_used ;


 int CSI2RX_STATIC_CFG_DLANE_MAP (unsigned int,unsigned int) ;
 scalar_t__ CSI2RX_STATIC_CFG_REG ;
 int CSI2RX_STREAM_CFG_FIFO_MODE_LARGE_BUF ;
 scalar_t__ CSI2RX_STREAM_CFG_REG (unsigned int) ;
 scalar_t__ CSI2RX_STREAM_CTRL_REG (unsigned int) ;
 int CSI2RX_STREAM_CTRL_START ;
 int CSI2RX_STREAM_DATA_CFG_EN_VC_SELECT ;
 scalar_t__ CSI2RX_STREAM_DATA_CFG_REG (unsigned int) ;
 int CSI2RX_STREAM_DATA_CFG_VC_SELECT (unsigned int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int csi2rx_reset (struct csi2rx_priv*) ;
 unsigned int find_first_zero_bit (unsigned long*,int) ;
 int s_stream ;
 int set_bit (unsigned int,unsigned long*) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int csi2rx_start(struct csi2rx_priv *csi2rx)
{
 unsigned int i;
 unsigned long lanes_used = 0;
 u32 reg;
 int ret;

 ret = clk_prepare_enable(csi2rx->p_clk);
 if (ret)
  return ret;

 csi2rx_reset(csi2rx);

 reg = csi2rx->num_lanes << 8;
 for (i = 0; i < csi2rx->num_lanes; i++) {
  reg |= CSI2RX_STATIC_CFG_DLANE_MAP(i, csi2rx->lanes[i]);
  set_bit(csi2rx->lanes[i], &lanes_used);
 }







 for (i = csi2rx->num_lanes; i < csi2rx->max_lanes; i++) {
  unsigned int idx = find_first_zero_bit(&lanes_used,
             sizeof(lanes_used));
  set_bit(idx, &lanes_used);
  reg |= CSI2RX_STATIC_CFG_DLANE_MAP(i, i + 1);
 }

 writel(reg, csi2rx->base + CSI2RX_STATIC_CFG_REG);

 ret = v4l2_subdev_call(csi2rx->source_subdev, video, s_stream, 1);
 if (ret)
  goto err_disable_pclk;
 for (i = 0; i < csi2rx->max_streams; i++) {
  ret = clk_prepare_enable(csi2rx->pixel_clk[i]);
  if (ret)
   goto err_disable_pixclk;

  writel(CSI2RX_STREAM_CFG_FIFO_MODE_LARGE_BUF,
         csi2rx->base + CSI2RX_STREAM_CFG_REG(i));

  writel(CSI2RX_STREAM_DATA_CFG_EN_VC_SELECT |
         CSI2RX_STREAM_DATA_CFG_VC_SELECT(i),
         csi2rx->base + CSI2RX_STREAM_DATA_CFG_REG(i));

  writel(CSI2RX_STREAM_CTRL_START,
         csi2rx->base + CSI2RX_STREAM_CTRL_REG(i));
 }

 ret = clk_prepare_enable(csi2rx->sys_clk);
 if (ret)
  goto err_disable_pixclk;

 clk_disable_unprepare(csi2rx->p_clk);

 return 0;

err_disable_pixclk:
 for (; i > 0; i--)
  clk_disable_unprepare(csi2rx->pixel_clk[i - 1]);

err_disable_pclk:
 clk_disable_unprepare(csi2rx->p_clk);

 return ret;
}
