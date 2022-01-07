
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct fimc_lite {int ctrl_handler; struct v4l2_subdev subdev; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,int *) ;

__attribute__((used)) static void fimc_lite_unregister_capture_subdev(struct fimc_lite *fimc)
{
 struct v4l2_subdev *sd = &fimc->subdev;

 v4l2_device_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(&fimc->ctrl_handler);
 v4l2_set_subdevdata(sd, ((void*)0));
}
