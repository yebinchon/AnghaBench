
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct isp_prev_device {TYPE_1__ subdev; int video_out; int video_in; int ctrls; } ;
struct isp_device {struct isp_prev_device isp_prev; } ;


 int media_entity_cleanup (int *) ;
 int omap3isp_video_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;

void omap3isp_preview_cleanup(struct isp_device *isp)
{
 struct isp_prev_device *prev = &isp->isp_prev;

 v4l2_ctrl_handler_free(&prev->ctrls);
 omap3isp_video_cleanup(&prev->video_in);
 omap3isp_video_cleanup(&prev->video_out);
 media_entity_cleanup(&prev->subdev.entity);
}
