
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; } ;
struct TYPE_2__ {struct v4l2_subdev subdev; } ;
struct fimc_dev {TYPE_1__ vid_cap; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,int *) ;

void fimc_unregister_capture_subdev(struct fimc_dev *fimc)
{
 struct v4l2_subdev *sd = &fimc->vid_cap.subdev;

 v4l2_device_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_set_subdevdata(sd, ((void*)0));
}
