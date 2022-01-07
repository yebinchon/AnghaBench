
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int * ops; int function; } ;
struct v4l2_subdev {TYPE_2__ entity; int name; int flags; } ;
struct vsp1_entity {scalar_t__ type; scalar_t__ index; unsigned int source_pad; struct v4l2_subdev subdev; int * config; TYPE_3__* pads; int * sources; struct vsp1_device* vsp1; int lock; TYPE_1__* route; } ;
struct vsp1_device {int dev; int media_ops; } ;
struct v4l2_subdev_ops {int dummy; } ;
struct TYPE_8__ {void* flags; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ index; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 char* dev_name (int ) ;
 void* devm_kcalloc (int ,unsigned int,int,int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 int media_entity_cleanup (TYPE_2__*) ;
 int media_entity_pads_init (TYPE_2__*,unsigned int,TYPE_3__*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*,char const*) ;
 int * v4l2_subdev_alloc_pad_config (struct v4l2_subdev*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ;
 int vsp1_entity_init_cfg (struct v4l2_subdev*,int *) ;
 TYPE_1__* vsp1_routes ;

int vsp1_entity_init(struct vsp1_device *vsp1, struct vsp1_entity *entity,
       const char *name, unsigned int num_pads,
       const struct v4l2_subdev_ops *ops, u32 function)
{
 struct v4l2_subdev *subdev;
 unsigned int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(vsp1_routes); ++i) {
  if (vsp1_routes[i].type == entity->type &&
      vsp1_routes[i].index == entity->index) {
   entity->route = &vsp1_routes[i];
   break;
  }
 }

 if (i == ARRAY_SIZE(vsp1_routes))
  return -EINVAL;

 mutex_init(&entity->lock);

 entity->vsp1 = vsp1;
 entity->source_pad = num_pads - 1;


 entity->pads = devm_kcalloc(vsp1->dev,
        num_pads, sizeof(*entity->pads),
        GFP_KERNEL);
 if (entity->pads == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < num_pads - 1; ++i)
  entity->pads[i].flags = MEDIA_PAD_FL_SINK;

 entity->sources = devm_kcalloc(vsp1->dev, max(num_pads - 1, 1U),
           sizeof(*entity->sources), GFP_KERNEL);
 if (entity->sources == ((void*)0))
  return -ENOMEM;


 entity->pads[num_pads - 1].flags = num_pads > 1 ? MEDIA_PAD_FL_SOURCE
      : MEDIA_PAD_FL_SINK;


 ret = media_entity_pads_init(&entity->subdev.entity, num_pads,
         entity->pads);
 if (ret < 0)
  return ret;


 subdev = &entity->subdev;
 v4l2_subdev_init(subdev, ops);

 subdev->entity.function = function;
 subdev->entity.ops = &vsp1->media_ops;
 subdev->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 snprintf(subdev->name, sizeof(subdev->name), "%s %s",
   dev_name(vsp1->dev), name);

 vsp1_entity_init_cfg(subdev, ((void*)0));





 entity->config = v4l2_subdev_alloc_pad_config(&entity->subdev);
 if (entity->config == ((void*)0)) {
  media_entity_cleanup(&entity->subdev.entity);
  return -ENOMEM;
 }

 return 0;
}
