
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_6__ {int function; } ;
struct TYPE_5__ {TYPE_3__ entity; int * internal_ops; int flags; } ;
struct dw9807_device {TYPE_1__ sd; int ctrls_vcm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_LENS ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 struct dw9807_device* devm_kzalloc (int *,int,int ) ;
 int dw9807_init_controls (struct dw9807_device*) ;
 int dw9807_int_ops ;
 int dw9807_ops ;
 int media_entity_cleanup (TYPE_3__*) ;
 int media_entity_pads_init (TYPE_3__*,int ,int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_idle (int *) ;
 int pm_runtime_set_active (int *) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;

__attribute__((used)) static int dw9807_probe(struct i2c_client *client)
{
 struct dw9807_device *dw9807_dev;
 int rval;

 dw9807_dev = devm_kzalloc(&client->dev, sizeof(*dw9807_dev),
      GFP_KERNEL);
 if (dw9807_dev == ((void*)0))
  return -ENOMEM;

 v4l2_i2c_subdev_init(&dw9807_dev->sd, client, &dw9807_ops);
 dw9807_dev->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 dw9807_dev->sd.internal_ops = &dw9807_int_ops;

 rval = dw9807_init_controls(dw9807_dev);
 if (rval)
  goto err_cleanup;

 rval = media_entity_pads_init(&dw9807_dev->sd.entity, 0, ((void*)0));
 if (rval < 0)
  goto err_cleanup;

 dw9807_dev->sd.entity.function = MEDIA_ENT_F_LENS;

 rval = v4l2_async_register_subdev(&dw9807_dev->sd);
 if (rval < 0)
  goto err_cleanup;

 pm_runtime_set_active(&client->dev);
 pm_runtime_enable(&client->dev);
 pm_runtime_idle(&client->dev);

 return 0;

err_cleanup:
 v4l2_ctrl_handler_free(&dw9807_dev->ctrls_vcm);
 media_entity_cleanup(&dw9807_dev->sd.entity);

 return rval;
}
