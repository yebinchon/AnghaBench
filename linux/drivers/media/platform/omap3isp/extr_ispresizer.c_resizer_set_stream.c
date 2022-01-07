
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; int entity; } ;
struct isp_video {int dmaqueue_flags; } ;
struct isp_res_device {int state; int stopping; int wait; int input; struct isp_video video_out; } ;
struct isp_device {int dummy; } ;
struct device {int dummy; } ;





 int ISP_VIDEO_DMAQUEUE_QUEUED ;
 int OMAP3_ISP_SBL_RESIZER_READ ;
 int OMAP3_ISP_SBL_RESIZER_WRITE ;
 int OMAP3_ISP_SUBCLK_RESIZER ;
 int RESIZER_INPUT_MEMORY ;
 int dev_dbg (struct device*,char*,int ) ;
 int isp_video_dmaqueue_flags_clr (struct isp_video*) ;
 int omap3isp_module_sync_idle (int *,int *,int *) ;
 int omap3isp_sbl_disable (struct isp_device*,int) ;
 int omap3isp_sbl_enable (struct isp_device*,int) ;
 int omap3isp_subclk_disable (struct isp_device*,int ) ;
 int omap3isp_subclk_enable (struct isp_device*,int ) ;
 int resizer_configure (struct isp_res_device*) ;
 int resizer_enable_oneshot (struct isp_res_device*) ;
 int resizer_print_status (struct isp_res_device*) ;
 struct device* to_device (struct isp_res_device*) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;
 struct isp_res_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct isp_res_device *res = v4l2_get_subdevdata(sd);
 struct isp_video *video_out = &res->video_out;
 struct isp_device *isp = to_isp_device(res);
 struct device *dev = to_device(res);

 if (res->state == 128) {
  if (enable == 128)
   return 0;

  omap3isp_subclk_enable(isp, OMAP3_ISP_SUBCLK_RESIZER);
  resizer_configure(res);
  resizer_print_status(res);
 }

 switch (enable) {
 case 130:
  omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_RESIZER_WRITE);
  if (video_out->dmaqueue_flags & ISP_VIDEO_DMAQUEUE_QUEUED) {
   resizer_enable_oneshot(res);
   isp_video_dmaqueue_flags_clr(video_out);
  }
  break;

 case 129:
  if (res->input == RESIZER_INPUT_MEMORY)
   omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_RESIZER_READ);
  omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_RESIZER_WRITE);

  resizer_enable_oneshot(res);
  break;

 case 128:
  if (omap3isp_module_sync_idle(&sd->entity, &res->wait,
           &res->stopping))
   dev_dbg(dev, "%s: module stop timeout.\n", sd->name);
  omap3isp_sbl_disable(isp, OMAP3_ISP_SBL_RESIZER_READ |
    OMAP3_ISP_SBL_RESIZER_WRITE);
  omap3isp_subclk_disable(isp, OMAP3_ISP_SUBCLK_RESIZER);
  isp_video_dmaqueue_flags_clr(video_out);
  break;
 }

 res->state = enable;
 return 0;
}
