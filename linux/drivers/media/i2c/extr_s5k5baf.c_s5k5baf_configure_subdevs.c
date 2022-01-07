
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int function; } ;
struct v4l2_subdev {int name; TYPE_1__ entity; int flags; int * internal_ops; int owner; } ;
struct TYPE_5__ {void* flags; } ;
struct s5k5baf {struct v4l2_subdev cis_sd; TYPE_2__* pads; struct v4l2_subdev sd; TYPE_2__ cis_pad; } ;
struct i2c_client {int addr; int dev; int adapter; } ;


 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_ENT_F_V4L2_SUBDEV_UNKNOWN ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int NUM_CIS_PADS ;
 int NUM_ISP_PADS ;
 size_t PAD_CIS ;
 size_t PAD_OUT ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_err (int *,char*,int ) ;
 int i2c_adapter_id (int ) ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int ,TYPE_2__*) ;
 int s5k5baf_cis_subdev_internal_ops ;
 int s5k5baf_cis_subdev_ops ;
 int s5k5baf_subdev_internal_ops ;
 int s5k5baf_subdev_ops ;
 int snprintf (int ,int,char*,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct s5k5baf*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int s5k5baf_configure_subdevs(struct s5k5baf *state,
         struct i2c_client *c)
{
 struct v4l2_subdev *sd;
 int ret;

 sd = &state->cis_sd;
 v4l2_subdev_init(sd, &s5k5baf_cis_subdev_ops);
 sd->owner = THIS_MODULE;
 v4l2_set_subdevdata(sd, state);
 snprintf(sd->name, sizeof(sd->name), "S5K5BAF-CIS %d-%04x",
   i2c_adapter_id(c->adapter), c->addr);

 sd->internal_ops = &s5k5baf_cis_subdev_internal_ops;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 state->cis_pad.flags = MEDIA_PAD_FL_SOURCE;
 sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
 ret = media_entity_pads_init(&sd->entity, NUM_CIS_PADS, &state->cis_pad);
 if (ret < 0)
  goto err;

 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, c, &s5k5baf_subdev_ops);
 snprintf(sd->name, sizeof(sd->name), "S5K5BAF-ISP %d-%04x",
   i2c_adapter_id(c->adapter), c->addr);

 sd->internal_ops = &s5k5baf_subdev_internal_ops;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 state->pads[PAD_CIS].flags = MEDIA_PAD_FL_SINK;
 state->pads[PAD_OUT].flags = MEDIA_PAD_FL_SOURCE;
 sd->entity.function = MEDIA_ENT_F_V4L2_SUBDEV_UNKNOWN;
 ret = media_entity_pads_init(&sd->entity, NUM_ISP_PADS, state->pads);

 if (!ret)
  return 0;

 media_entity_cleanup(&state->cis_sd.entity);
err:
 dev_err(&c->dev, "cannot init media entity %s\n", sd->name);
 return ret;
}
