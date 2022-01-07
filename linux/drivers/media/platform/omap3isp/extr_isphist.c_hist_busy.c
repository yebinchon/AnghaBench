
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int isp; } ;


 int ISPHIST_PCR ;
 int ISPHIST_PCR_BUSY ;
 int OMAP3_ISP_IOMEM_HIST ;
 int isp_reg_readl (int ,int ,int ) ;

__attribute__((used)) static int hist_busy(struct ispstat *hist)
{
 return isp_reg_readl(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_PCR)
      & ISPHIST_PCR_BUSY;
}
