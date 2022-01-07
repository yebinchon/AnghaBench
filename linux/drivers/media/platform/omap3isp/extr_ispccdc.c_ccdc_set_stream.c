
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {int state; int output; int underrun; } ;


 int CCDC_OUTPUT_MEMORY ;
 int ISPCCDC_CFG ;
 int ISPCCDC_CFG_VDLC ;



 int OMAP3_ISP_IOMEM_CCDC ;
 int OMAP3_ISP_SBL_CCDC_WRITE ;
 int OMAP3_ISP_SUBCLK_CCDC ;
 int ccdc_configure (struct isp_ccdc_device*) ;
 int ccdc_disable (struct isp_ccdc_device*) ;
 int ccdc_enable (struct isp_ccdc_device*) ;
 int ccdc_print_status (struct isp_ccdc_device*) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 int omap3isp_sbl_disable (struct isp_device*,int ) ;
 int omap3isp_sbl_enable (struct isp_device*,int ) ;
 int omap3isp_subclk_disable (struct isp_device*,int ) ;
 int omap3isp_subclk_enable (struct isp_device*,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;
 struct isp_ccdc_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ccdc_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct isp_ccdc_device *ccdc = v4l2_get_subdevdata(sd);
 struct isp_device *isp = to_isp_device(ccdc);
 int ret = 0;

 if (ccdc->state == 128) {
  if (enable == 128)
   return 0;

  omap3isp_subclk_enable(isp, OMAP3_ISP_SUBCLK_CCDC);
  isp_reg_set(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_CFG,
       ISPCCDC_CFG_VDLC);

  ccdc_configure(ccdc);

  ccdc_print_status(ccdc);
 }

 switch (enable) {
 case 130:
  if (ccdc->output & CCDC_OUTPUT_MEMORY)
   omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_CCDC_WRITE);

  if (ccdc->underrun || !(ccdc->output & CCDC_OUTPUT_MEMORY))
   ccdc_enable(ccdc);

  ccdc->underrun = 0;
  break;

 case 129:
  if (ccdc->output & CCDC_OUTPUT_MEMORY &&
      ccdc->state != 129)
   omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_CCDC_WRITE);

  ccdc_enable(ccdc);
  break;

 case 128:
  ret = ccdc_disable(ccdc);
  if (ccdc->output & CCDC_OUTPUT_MEMORY)
   omap3isp_sbl_disable(isp, OMAP3_ISP_SBL_CCDC_WRITE);
  omap3isp_subclk_disable(isp, OMAP3_ISP_SUBCLK_CCDC);
  ccdc->underrun = 0;
  break;
 }

 ccdc->state = enable;
 return ret;
}
