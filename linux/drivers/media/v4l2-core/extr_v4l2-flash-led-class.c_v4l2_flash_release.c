
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; int ctrl_handler; int fwnode; } ;
struct v4l2_flash {struct v4l2_subdev sd; } ;


 scalar_t__ IS_ERR_OR_NULL (struct v4l2_flash*) ;
 int fwnode_handle_put (int ) ;
 int media_entity_cleanup (int *) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;

void v4l2_flash_release(struct v4l2_flash *v4l2_flash)
{
 struct v4l2_subdev *sd;

 if (IS_ERR_OR_NULL(v4l2_flash))
  return;

 sd = &v4l2_flash->sd;

 v4l2_async_unregister_subdev(sd);

 fwnode_handle_put(sd->fwnode);

 v4l2_ctrl_handler_free(sd->ctrl_handler);
 media_entity_cleanup(&sd->entity);
}
