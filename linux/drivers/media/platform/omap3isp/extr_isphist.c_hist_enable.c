
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int isp; } ;


 int ISPHIST_PCR ;
 int ISPHIST_PCR_ENABLE ;
 int OMAP3_ISP_IOMEM_HIST ;
 int OMAP3_ISP_SUBCLK_HIST ;
 int isp_reg_clr (int ,int ,int ,int ) ;
 int isp_reg_set (int ,int ,int ,int ) ;
 int omap3isp_subclk_disable (int ,int ) ;
 int omap3isp_subclk_enable (int ,int ) ;

__attribute__((used)) static void hist_enable(struct ispstat *hist, int enable)
{
 if (enable) {
  isp_reg_set(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_PCR,
       ISPHIST_PCR_ENABLE);
  omap3isp_subclk_enable(hist->isp, OMAP3_ISP_SUBCLK_HIST);
 } else {
  isp_reg_clr(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_PCR,
       ISPHIST_PCR_ENABLE);
  omap3isp_subclk_disable(hist->isp, OMAP3_ISP_SUBCLK_HIST);
 }
}
