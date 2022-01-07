
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_6__ {int function; } ;
struct TYPE_5__ {TYPE_3__ entity; int * internal_ops; int flags; } ;
struct ak7375_device {TYPE_1__ sd; int ctrls_vcm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_LENS ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int ak7375_init_controls (struct ak7375_device*) ;
 int ak7375_int_ops ;
 int ak7375_ops ;
 struct ak7375_device* devm_kzalloc (int *,int,int ) ;
 int media_entity_cleanup (TYPE_3__*) ;
 int media_entity_pads_init (TYPE_3__*,int ,int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_idle (int *) ;
 int pm_runtime_set_active (int *) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;

__attribute__((used)) static int ak7375_probe(struct i2c_client *client)
{
 struct ak7375_device *ak7375_dev;
 int ret;

 ak7375_dev = devm_kzalloc(&client->dev, sizeof(*ak7375_dev),
      GFP_KERNEL);
 if (!ak7375_dev)
  return -ENOMEM;

 v4l2_i2c_subdev_init(&ak7375_dev->sd, client, &ak7375_ops);
 ak7375_dev->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 ak7375_dev->sd.internal_ops = &ak7375_int_ops;
 ak7375_dev->sd.entity.function = MEDIA_ENT_F_LENS;

 ret = ak7375_init_controls(ak7375_dev);
 if (ret)
  goto err_cleanup;

 ret = media_entity_pads_init(&ak7375_dev->sd.entity, 0, ((void*)0));
 if (ret < 0)
  goto err_cleanup;

 ret = v4l2_async_register_subdev(&ak7375_dev->sd);
 if (ret < 0)
  goto err_cleanup;

 pm_runtime_set_active(&client->dev);
 pm_runtime_enable(&client->dev);
 pm_runtime_idle(&client->dev);

 return 0;

err_cleanup:
 v4l2_ctrl_handler_free(&ak7375_dev->ctrls_vcm);
 media_entity_cleanup(&ak7375_dev->sd.entity);

 return ret;
}
