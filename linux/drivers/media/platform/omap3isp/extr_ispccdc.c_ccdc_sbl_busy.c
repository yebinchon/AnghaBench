
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;


 int ISPSBL_CCDC_WR_0 ;
 int ISPSBL_CCDC_WR_0_DATA_READY ;
 int ISPSBL_CCDC_WR_1 ;
 int ISPSBL_CCDC_WR_2 ;
 int ISPSBL_CCDC_WR_3 ;
 int OMAP3_ISP_IOMEM_SBL ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int omap3isp_ccdc_busy (struct isp_ccdc_device*) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static int ccdc_sbl_busy(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);

 return omap3isp_ccdc_busy(ccdc)
  | (isp_reg_readl(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_0) &
     ISPSBL_CCDC_WR_0_DATA_READY)
  | (isp_reg_readl(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_1) &
     ISPSBL_CCDC_WR_0_DATA_READY)
  | (isp_reg_readl(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_2) &
     ISPSBL_CCDC_WR_0_DATA_READY)
  | (isp_reg_readl(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_CCDC_WR_3) &
     ISPSBL_CCDC_WR_0_DATA_READY);
}
