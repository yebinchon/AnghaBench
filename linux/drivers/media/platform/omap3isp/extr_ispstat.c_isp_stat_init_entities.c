
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_ops {int dummy; } ;
struct media_entity {int * ops; } ;
struct v4l2_subdev {int flags; int grp_id; int name; struct media_entity entity; } ;
struct TYPE_2__ {int flags; } ;
struct ispstat {TYPE_1__ pad; struct v4l2_subdev subdev; } ;


 int BIT (int) ;
 int MEDIA_PAD_FL_MUST_CONNECT ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int V4L2_SUBDEV_NAME_SIZE ;
 int media_entity_pads_init (struct media_entity*,int,TYPE_1__*) ;
 int snprintf (int ,int ,char*,char const*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct ispstat*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ;

__attribute__((used)) static int isp_stat_init_entities(struct ispstat *stat, const char *name,
      const struct v4l2_subdev_ops *sd_ops)
{
 struct v4l2_subdev *subdev = &stat->subdev;
 struct media_entity *me = &subdev->entity;

 v4l2_subdev_init(subdev, sd_ops);
 snprintf(subdev->name, V4L2_SUBDEV_NAME_SIZE, "OMAP3 ISP %s", name);
 subdev->grp_id = BIT(16);
 subdev->flags |= V4L2_SUBDEV_FL_HAS_EVENTS | V4L2_SUBDEV_FL_HAS_DEVNODE;
 v4l2_set_subdevdata(subdev, stat);

 stat->pad.flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT;
 me->ops = ((void*)0);

 return media_entity_pads_init(me, 1, &stat->pad);
}
