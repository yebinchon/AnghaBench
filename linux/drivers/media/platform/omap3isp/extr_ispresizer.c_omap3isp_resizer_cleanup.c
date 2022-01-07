
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct isp_res_device {TYPE_1__ subdev; int video_out; int video_in; } ;
struct isp_device {struct isp_res_device isp_res; } ;


 int media_entity_cleanup (int *) ;
 int omap3isp_video_cleanup (int *) ;

void omap3isp_resizer_cleanup(struct isp_device *isp)
{
 struct isp_res_device *res = &isp->isp_res;

 omap3isp_video_cleanup(&res->video_in);
 omap3isp_video_cleanup(&res->video_out);
 media_entity_cleanup(&res->subdev.entity);
}
