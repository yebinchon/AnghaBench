
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct camif_dev {int ctrl_handler; struct v4l2_subdev subdev; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 int * v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,int *) ;

void s3c_camif_unregister_subdev(struct camif_dev *camif)
{
 struct v4l2_subdev *sd = &camif->subdev;


 if (v4l2_get_subdevdata(sd) == ((void*)0))
  return;

 v4l2_device_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(&camif->ctrl_handler);
 v4l2_set_subdevdata(sd, ((void*)0));
}
