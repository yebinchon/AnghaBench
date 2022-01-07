
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_ops {int dummy; } ;
struct TYPE_2__ {char* name; int function; int obj_type; } ;
struct v4l2_subdev {char* name; TYPE_1__ entity; int * host_priv; int * dev_priv; scalar_t__ grp_id; scalar_t__ flags; int * v4l2_dev; struct v4l2_subdev_ops const* ops; int list; } ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int MEDIA_ENTITY_TYPE_V4L2_SUBDEV ;
 int MEDIA_ENT_F_V4L2_SUBDEV_UNKNOWN ;

void v4l2_subdev_init(struct v4l2_subdev *sd, const struct v4l2_subdev_ops *ops)
{
 INIT_LIST_HEAD(&sd->list);
 BUG_ON(!ops);
 sd->ops = ops;
 sd->v4l2_dev = ((void*)0);
 sd->flags = 0;
 sd->name[0] = '\0';
 sd->grp_id = 0;
 sd->dev_priv = ((void*)0);
 sd->host_priv = ((void*)0);





}
