
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct vimc_ent_device {int pads; TYPE_1__* ent; } ;
struct v4l2_subdev_ops {int dummy; } ;
struct v4l2_subdev_internal_ops {int dummy; } ;
struct TYPE_3__ {int * ops; int function; } ;
struct v4l2_subdev {TYPE_1__ entity; int flags; scalar_t__ ctrl_handler; int name; int owner; struct v4l2_subdev_internal_ops const* internal_ops; } ;
struct v4l2_device {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int dev_err (int ,char*,char const* const,int) ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int ,int ) ;
 int strscpy (int ,char const* const,int) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct vimc_ent_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ;
 int vimc_ent_sd_mops ;
 int vimc_pads_cleanup (int ) ;
 int vimc_pads_init (int ,unsigned long const*) ;

int vimc_ent_sd_register(struct vimc_ent_device *ved,
    struct v4l2_subdev *sd,
    struct v4l2_device *v4l2_dev,
    const char *const name,
    u32 function,
    u16 num_pads,
    const unsigned long *pads_flag,
    const struct v4l2_subdev_internal_ops *sd_int_ops,
    const struct v4l2_subdev_ops *sd_ops)
{
 int ret;


 ved->pads = vimc_pads_init(num_pads, pads_flag);
 if (IS_ERR(ved->pads))
  return PTR_ERR(ved->pads);


 ved->ent = &sd->entity;


 v4l2_subdev_init(sd, sd_ops);
 sd->internal_ops = sd_int_ops;
 sd->entity.function = function;
 sd->entity.ops = &vimc_ent_sd_mops;
 sd->owner = THIS_MODULE;
 strscpy(sd->name, name, sizeof(sd->name));
 v4l2_set_subdevdata(sd, ved);


 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 if (sd->ctrl_handler)
  sd->flags |= V4L2_SUBDEV_FL_HAS_EVENTS;


 ret = media_entity_pads_init(&sd->entity, num_pads, ved->pads);
 if (ret)
  goto err_clean_pads;


 ret = v4l2_device_register_subdev(v4l2_dev, sd);
 if (ret) {
  dev_err(v4l2_dev->dev,
   "%s: subdev register failed (err=%d)\n",
   name, ret);
  goto err_clean_m_ent;
 }

 return 0;

err_clean_m_ent:
 media_entity_cleanup(&sd->entity);
err_clean_pads:
 vimc_pads_cleanup(ved->pads);
 return ret;
}
