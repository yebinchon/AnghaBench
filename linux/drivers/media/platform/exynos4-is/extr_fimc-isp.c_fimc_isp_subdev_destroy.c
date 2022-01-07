
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; } ;
struct TYPE_2__ {int handler; } ;
struct fimc_isp {TYPE_1__ ctrls; struct v4l2_subdev subdev; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,int *) ;

void fimc_isp_subdev_destroy(struct fimc_isp *isp)
{
 struct v4l2_subdev *sd = &isp->subdev;

 v4l2_device_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(&isp->ctrls.handler);
 v4l2_set_subdevdata(sd, ((void*)0));
}
