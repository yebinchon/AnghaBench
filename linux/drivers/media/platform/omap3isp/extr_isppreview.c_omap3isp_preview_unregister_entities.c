
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_prev_device {int video_out; int video_in; int subdev; } ;


 int omap3isp_video_unregister (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

void omap3isp_preview_unregister_entities(struct isp_prev_device *prev)
{
 v4l2_device_unregister_subdev(&prev->subdev);
 omap3isp_video_unregister(&prev->video_in);
 omap3isp_video_unregister(&prev->video_out);
}
