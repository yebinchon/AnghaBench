
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_hist_config {int num_acc_frames; } ;
struct ispstat {int wait_acc_frames; struct omap3isp_hist_config* priv; struct isp_device* isp; } ;
struct isp_device {int dummy; } ;


 int ISPHIST_ADDR ;
 int ISPHIST_CNT ;
 int ISPHIST_CNT_CLEAR ;
 int ISPHIST_DATA ;
 int OMAP3ISP_HIST_MEM_SIZE ;
 int OMAP3_ISP_IOMEM_HIST ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;

__attribute__((used)) static void hist_reset_mem(struct ispstat *hist)
{
 struct isp_device *isp = hist->isp;
 struct omap3isp_hist_config *conf = hist->priv;
 unsigned int i;

 isp_reg_writel(isp, 0, OMAP3_ISP_IOMEM_HIST, ISPHIST_ADDR);





 isp_reg_set(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT, ISPHIST_CNT_CLEAR);





 for (i = OMAP3ISP_HIST_MEM_SIZE / 4; i > 0; i--) {
  isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
  isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
  isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
  isp_reg_readl(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
 }
 isp_reg_clr(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT, ISPHIST_CNT_CLEAR);

 hist->wait_acc_frames = conf->num_acc_frames;
}
