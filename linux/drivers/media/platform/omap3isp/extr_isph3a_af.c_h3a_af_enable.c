
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int isp; } ;


 int ISPH3A_PCR ;
 int ISPH3A_PCR_AF_EN ;
 int OMAP3_ISP_IOMEM_H3A ;
 int OMAP3_ISP_SUBCLK_AF ;
 int isp_reg_clr (int ,int ,int ,int ) ;
 int isp_reg_set (int ,int ,int ,int ) ;
 int omap3isp_subclk_disable (int ,int ) ;
 int omap3isp_subclk_enable (int ,int ) ;

__attribute__((used)) static void h3a_af_enable(struct ispstat *af, int enable)
{
 if (enable) {
  isp_reg_set(af->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
       ISPH3A_PCR_AF_EN);
  omap3isp_subclk_enable(af->isp, OMAP3_ISP_SUBCLK_AF);
 } else {
  isp_reg_clr(af->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
       ISPH3A_PCR_AF_EN);
  omap3isp_subclk_disable(af->isp, OMAP3_ISP_SUBCLK_AF);
 }
}
