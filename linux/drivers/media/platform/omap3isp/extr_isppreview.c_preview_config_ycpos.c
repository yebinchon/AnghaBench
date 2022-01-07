
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;
typedef enum preview_ycpos_mode { ____Placeholder_preview_ycpos_mode } preview_ycpos_mode ;


 int ISPPRV_PCR ;
 int ISPPRV_PCR_YCPOS_CrYCbY ;
 int ISPPRV_PCR_YCPOS_SHIFT ;


 int OMAP3_ISP_IOMEM_PREV ;
 int YCPOS_CrYCbY ;
 int YCPOS_YCrYCb ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_config_ycpos(struct isp_prev_device *prev, u32 pixelcode)
{
 struct isp_device *isp = to_isp_device(prev);
 enum preview_ycpos_mode mode;

 switch (pixelcode) {
 case 128:
  mode = YCPOS_CrYCbY;
  break;
 case 129:
  mode = YCPOS_YCrYCb;
  break;
 default:
  return;
 }

 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
   ISPPRV_PCR_YCPOS_CrYCbY,
   mode << ISPPRV_PCR_YCPOS_SHIFT);
}
