
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int isp; } ;


 int ISPH3A_PCR ;
 int ISPH3A_PCR_BUSYAF ;
 int OMAP3_ISP_IOMEM_H3A ;
 int isp_reg_readl (int ,int ,int ) ;

__attribute__((used)) static int h3a_af_busy(struct ispstat *af)
{
 return isp_reg_readl(af->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR)
      & ISPH3A_PCR_BUSYAF;
}
