
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; } ;
struct ispif_device {int line_num; TYPE_1__* line; int config_lock; int power_lock; } ;
struct TYPE_2__ {struct v4l2_subdev subdev; } ;


 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

void msm_ispif_unregister_entities(struct ispif_device *ispif)
{
 int i;

 mutex_destroy(&ispif->power_lock);
 mutex_destroy(&ispif->config_lock);

 for (i = 0; i < ispif->line_num; i++) {
  struct v4l2_subdev *sd = &ispif->line[i].subdev;

  v4l2_device_unregister_subdev(sd);
  media_entity_cleanup(&sd->entity);
 }
}
