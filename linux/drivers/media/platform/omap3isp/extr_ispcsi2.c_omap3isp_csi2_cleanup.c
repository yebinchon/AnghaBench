
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct isp_csi2_device {TYPE_1__ subdev; int video_out; } ;
struct isp_device {struct isp_csi2_device isp_csi2a; } ;


 int media_entity_cleanup (int *) ;
 int omap3isp_video_cleanup (int *) ;

void omap3isp_csi2_cleanup(struct isp_device *isp)
{
 struct isp_csi2_device *csi2a = &isp->isp_csi2a;

 omap3isp_video_cleanup(&csi2a->video_out);
 media_entity_cleanup(&csi2a->subdev.entity);
}
