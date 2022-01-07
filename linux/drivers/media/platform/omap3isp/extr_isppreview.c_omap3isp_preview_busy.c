
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_PCR ;
 int ISPPRV_PCR_BUSY ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

int omap3isp_preview_busy(struct isp_prev_device *prev)
{
 struct isp_device *isp = to_isp_device(prev);

 return isp_reg_readl(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR)
  & ISPPRV_PCR_BUSY;
}
