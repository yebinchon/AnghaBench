
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int isp; } ;


 int ISPH3A_PCR ;
 int ISPH3A_PCR_AEW_EN ;
 int OMAP3_ISP_IOMEM_H3A ;
 int OMAP3_ISP_SUBCLK_AEWB ;
 int isp_reg_clr (int ,int ,int ,int ) ;
 int isp_reg_set (int ,int ,int ,int ) ;
 int omap3isp_subclk_disable (int ,int ) ;
 int omap3isp_subclk_enable (int ,int ) ;

__attribute__((used)) static void h3a_aewb_enable(struct ispstat *aewb, int enable)
{
 if (enable) {
  isp_reg_set(aewb->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
       ISPH3A_PCR_AEW_EN);
  omap3isp_subclk_enable(aewb->isp, OMAP3_ISP_SUBCLK_AEWB);
 } else {
  isp_reg_clr(aewb->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
       ISPH3A_PCR_AEW_EN);
  omap3isp_subclk_disable(aewb->isp, OMAP3_ISP_SUBCLK_AEWB);
 }
}
