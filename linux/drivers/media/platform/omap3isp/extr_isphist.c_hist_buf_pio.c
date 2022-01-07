
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ispstat {int buf_size; struct isp_device* isp; TYPE_1__* active_buf; } ;
struct isp_device {int dev; } ;
struct TYPE_2__ {int * virt_addr; } ;


 int ISPHIST_ADDR ;
 int ISPHIST_CNT ;
 int ISPHIST_CNT_CLEAR ;
 int ISPHIST_DATA ;
 int OMAP3_ISP_IOMEM_HIST ;
 int STAT_BUF_DONE ;
 int STAT_NO_BUF ;
 int dev_dbg (int ,char*) ;
 int hist_reset_mem (struct ispstat*) ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 void* isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;

__attribute__((used)) static int hist_buf_pio(struct ispstat *hist)
{
 struct isp_device *isp = hist->isp;
 u32 *buf = hist->active_buf->virt_addr;
 unsigned int i;

 if (!buf) {
  dev_dbg(isp->dev, "hist: invalid PIO buffer address\n");
  hist_reset_mem(hist);
  return STAT_NO_BUF;
 }

 isp_reg_writel(isp, 0, OMAP3_ISP_IOMEM_HIST, ISPHIST_ADDR);






 isp_reg_set(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT, ISPHIST_CNT_CLEAR);






 for (i = hist->buf_size / 16; i > 0; i--) {
  *buf++ = isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
  *buf++ = isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
  *buf++ = isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
  *buf++ = isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
 }
 isp_reg_clr(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT,
      ISPHIST_CNT_CLEAR);

 return STAT_BUF_DONE;
}
