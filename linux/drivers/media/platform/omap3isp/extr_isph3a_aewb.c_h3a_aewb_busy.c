
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int isp; } ;


 int ISPH3A_PCR ;
 int ISPH3A_PCR_BUSYAEAWB ;
 int OMAP3_ISP_IOMEM_H3A ;
 int isp_reg_readl (int ,int ,int ) ;

__attribute__((used)) static int h3a_aewb_busy(struct ispstat *aewb)
{
 return isp_reg_readl(aewb->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR)
      & ISPH3A_PCR_BUSYAEAWB;
}
