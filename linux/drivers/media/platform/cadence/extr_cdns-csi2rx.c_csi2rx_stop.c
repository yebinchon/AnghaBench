
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi2rx_priv {unsigned int max_streams; int dev; int source_subdev; int p_clk; int * pixel_clk; scalar_t__ base; int sys_clk; } ;


 scalar_t__ CSI2RX_STREAM_CTRL_REG (unsigned int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_warn (int ,char*) ;
 int s_stream ;
 scalar_t__ v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void csi2rx_stop(struct csi2rx_priv *csi2rx)
{
 unsigned int i;

 clk_prepare_enable(csi2rx->p_clk);
 clk_disable_unprepare(csi2rx->sys_clk);

 for (i = 0; i < csi2rx->max_streams; i++) {
  writel(0, csi2rx->base + CSI2RX_STREAM_CTRL_REG(i));

  clk_disable_unprepare(csi2rx->pixel_clk[i]);
 }

 clk_disable_unprepare(csi2rx->p_clk);

 if (v4l2_subdev_call(csi2rx->source_subdev, video, s_stream, 0))
  dev_warn(csi2rx->dev, "Couldn't disable our subdev\n");
}
