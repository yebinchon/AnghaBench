
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int ISPCCDC_HSIZE_OFF ;
 int ISPCCDC_SDOFST ;
 int ISPCCDC_SDOFST_LOFST0_SHIFT ;
 int ISPCCDC_SDOFST_LOFST1_SHIFT ;
 int ISPCCDC_SDOFST_LOFST2_SHIFT ;
 int ISPCCDC_SDOFST_LOFST3_SHIFT ;
 int OMAP3_ISP_IOMEM_CCDC ;


 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_config_outlineoffset(struct isp_ccdc_device *ccdc,
          unsigned int bpl,
          enum v4l2_field field)
{
 struct isp_device *isp = to_isp_device(ccdc);
 u32 sdofst = 0;

 isp_reg_writel(isp, bpl & 0xffff, OMAP3_ISP_IOMEM_CCDC,
         ISPCCDC_HSIZE_OFF);

 switch (field) {
 case 128:
 case 129:



  sdofst |= (1 << ISPCCDC_SDOFST_LOFST0_SHIFT)
         | (1 << ISPCCDC_SDOFST_LOFST1_SHIFT)
         | (1 << ISPCCDC_SDOFST_LOFST2_SHIFT)
         | (1 << ISPCCDC_SDOFST_LOFST3_SHIFT);
  break;

 default:

  break;
 }

 isp_reg_writel(isp, sdofst, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_SDOFST);
}
