
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {int video_out; int video_in; int subdev; } ;


 int omap3isp_video_unregister (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

void omap3isp_resizer_unregister_entities(struct isp_res_device *res)
{
 v4l2_device_unregister_subdev(&res->subdev);
 omap3isp_video_unregister(&res->video_in);
 omap3isp_video_unregister(&res->video_out);
}
