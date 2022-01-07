
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_ops {int dummy; } ;
struct TYPE_8__ {int * ops; int function; } ;
struct v4l2_subdev {TYPE_4__ entity; int name; TYPE_2__* dev; int owner; int flags; } ;
struct adv748x_state {TYPE_3__* client; TYPE_2__* dev; } ;
struct TYPE_7__ {int addr; int adapter; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {char* name; int owner; } ;


 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int adv748x_media_ops ;
 int adv748x_sd_to_csi2 (struct v4l2_subdev*) ;
 int adv748x_tx_media_ops ;
 int i2c_adapter_id (int ) ;
 scalar_t__ is_tx (int ) ;
 int snprintf (int ,int,char*,char*,int,int,char const*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct adv748x_state*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ;

void adv748x_subdev_init(struct v4l2_subdev *sd, struct adv748x_state *state,
    const struct v4l2_subdev_ops *ops, u32 function,
    const char *ident)
{
 v4l2_subdev_init(sd, ops);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;


 sd->owner = state->dev->driver->owner;
 sd->dev = state->dev;

 v4l2_set_subdevdata(sd, state);


 snprintf(sd->name, sizeof(sd->name), "%s %d-%04x %s",
  state->dev->driver->name,
  i2c_adapter_id(state->client->adapter),
  state->client->addr, ident);

 sd->entity.function = function;
 sd->entity.ops = is_tx(adv748x_sd_to_csi2(sd)) ?
    &adv748x_tx_media_ops : &adv748x_media_ops;
}
