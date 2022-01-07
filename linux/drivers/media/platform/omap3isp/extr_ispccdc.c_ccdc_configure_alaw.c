
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isp_format_info {int width; } ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {scalar_t__ alaw; TYPE_1__* formats; } ;
struct TYPE_2__ {int code; } ;


 size_t CCDC_PAD_SINK ;
 int ISPCCDC_ALAW ;
 int ISPCCDC_ALAW_CCDTBL ;
 int ISPCCDC_ALAW_GWDI_10_1 ;
 int ISPCCDC_ALAW_GWDI_11_2 ;
 int ISPCCDC_ALAW_GWDI_12_3 ;
 int ISPCCDC_ALAW_GWDI_9_0 ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_format_info* omap3isp_video_format_info (int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_configure_alaw(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);
 const struct isp_format_info *info;
 u32 alaw = 0;

 info = omap3isp_video_format_info(ccdc->formats[CCDC_PAD_SINK].code);

 switch (info->width) {
 case 8:
  return;

 case 10:
  alaw = ISPCCDC_ALAW_GWDI_9_0;
  break;
 case 11:
  alaw = ISPCCDC_ALAW_GWDI_10_1;
  break;
 case 12:
  alaw = ISPCCDC_ALAW_GWDI_11_2;
  break;
 case 13:
  alaw = ISPCCDC_ALAW_GWDI_12_3;
  break;
 }

 if (ccdc->alaw)
  alaw |= ISPCCDC_ALAW_CCDTBL;

 isp_reg_writel(isp, alaw, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_ALAW);
}
