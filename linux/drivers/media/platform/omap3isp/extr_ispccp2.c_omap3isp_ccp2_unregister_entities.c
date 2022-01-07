
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccp2_device {int video_in; int subdev; } ;


 int omap3isp_video_unregister (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

void omap3isp_ccp2_unregister_entities(struct isp_ccp2_device *ccp2)
{
 v4l2_device_unregister_subdev(&ccp2->subdev);
 omap3isp_video_unregister(&ccp2->video_in);
}
