
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct isp_ccp2_device {TYPE_1__ subdev; int video_in; } ;
struct isp_device {struct isp_ccp2_device isp_ccp2; } ;


 int media_entity_cleanup (int *) ;
 int omap3isp_video_cleanup (int *) ;

void omap3isp_ccp2_cleanup(struct isp_device *isp)
{
 struct isp_ccp2_device *ccp2 = &isp->isp_ccp2;

 omap3isp_video_cleanup(&ccp2->video_in);
 media_entity_cleanup(&ccp2->subdev.entity);
}
