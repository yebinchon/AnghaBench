
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; int entity; } ;
struct isp_video {int dmaqueue_flags; } ;
struct isp_prev_device {int state; int output; int stopping; int wait; int input; struct isp_video video_out; } ;
struct isp_device {int dummy; } ;
struct device {int dummy; } ;





 int ISP_VIDEO_DMAQUEUE_QUEUED ;
 int OMAP3_ISP_SBL_PREVIEW_READ ;
 int OMAP3_ISP_SBL_PREVIEW_WRITE ;
 int OMAP3_ISP_SUBCLK_PREVIEW ;
 int PREVIEW_INPUT_MEMORY ;
 int PREVIEW_OUTPUT_MEMORY ;
 int atomic_set (int *,int ) ;
 int dev_dbg (struct device*,char*,int ) ;
 int isp_video_dmaqueue_flags_clr (struct isp_video*) ;
 int omap3isp_module_sync_idle (int *,int *,int *) ;
 int omap3isp_sbl_disable (struct isp_device*,int ) ;
 int omap3isp_sbl_enable (struct isp_device*,int ) ;
 int omap3isp_subclk_disable (struct isp_device*,int ) ;
 int omap3isp_subclk_enable (struct isp_device*,int ) ;
 int preview_configure (struct isp_prev_device*) ;
 int preview_enable_oneshot (struct isp_prev_device*) ;
 int preview_print_status (struct isp_prev_device*) ;
 struct device* to_device (struct isp_prev_device*) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;
 struct isp_prev_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int preview_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct isp_prev_device *prev = v4l2_get_subdevdata(sd);
 struct isp_video *video_out = &prev->video_out;
 struct isp_device *isp = to_isp_device(prev);
 struct device *dev = to_device(prev);

 if (prev->state == 128) {
  if (enable == 128)
   return 0;

  omap3isp_subclk_enable(isp, OMAP3_ISP_SUBCLK_PREVIEW);
  preview_configure(prev);
  atomic_set(&prev->stopping, 0);
  preview_print_status(prev);
 }

 switch (enable) {
 case 130:
  if (prev->output & PREVIEW_OUTPUT_MEMORY)
   omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_PREVIEW_WRITE);

  if (video_out->dmaqueue_flags & ISP_VIDEO_DMAQUEUE_QUEUED ||
      !(prev->output & PREVIEW_OUTPUT_MEMORY))
   preview_enable_oneshot(prev);

  isp_video_dmaqueue_flags_clr(video_out);
  break;

 case 129:
  if (prev->input == PREVIEW_INPUT_MEMORY)
   omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_PREVIEW_READ);
  if (prev->output & PREVIEW_OUTPUT_MEMORY)
   omap3isp_sbl_enable(isp, OMAP3_ISP_SBL_PREVIEW_WRITE);

  preview_enable_oneshot(prev);
  break;

 case 128:
  if (omap3isp_module_sync_idle(&sd->entity, &prev->wait,
           &prev->stopping))
   dev_dbg(dev, "%s: stop timeout.\n", sd->name);
  omap3isp_sbl_disable(isp, OMAP3_ISP_SBL_PREVIEW_READ);
  omap3isp_sbl_disable(isp, OMAP3_ISP_SBL_PREVIEW_WRITE);
  omap3isp_subclk_disable(isp, OMAP3_ISP_SUBCLK_PREVIEW);
  isp_video_dmaqueue_flags_clr(video_out);
  break;
 }

 prev->state = enable;
 return 0;
}
