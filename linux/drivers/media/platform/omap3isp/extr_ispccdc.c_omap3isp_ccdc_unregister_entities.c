
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccdc_device {int video_out; int subdev; } ;


 int omap3isp_video_unregister (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

void omap3isp_ccdc_unregister_entities(struct isp_ccdc_device *ccdc)
{
 v4l2_device_unregister_subdev(&ccdc->subdev);
 omap3isp_video_unregister(&ccdc->video_out);
}
