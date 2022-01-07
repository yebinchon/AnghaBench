
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int error; int * lock; } ;
struct TYPE_14__ {int function; } ;
struct TYPE_12__ {int flags; TYPE_8__ entity; TYPE_3__* ctrl_handler; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_11__ {int height; int width; int top; int left; } ;
struct mt9m001 {int mutex; TYPE_3__ hdl; TYPE_2__ subdev; TYPE_9__ pad; TYPE_1__ rect; scalar_t__ y_skip_top; int autoexposure; int exposure; void* reset_gpio; void* standby_gpio; void* clk; } ;
struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ IS_ERR (void*) ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int MT9M001_COLUMN_SKIP ;
 int MT9M001_MAX_HEIGHT ;
 int MT9M001_MAX_WIDTH ;
 int MT9M001_ROW_SKIP ;
 int PTR_ERR (void*) ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_VFLIP ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int dev_warn (int *,char*) ;
 void* devm_clk_get (int *,int *) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct mt9m001* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int media_entity_cleanup (TYPE_8__*) ;
 int media_entity_pads_init (TYPE_8__*,int,TYPE_9__*) ;
 int mt9m001_ctrl_ops ;
 int mt9m001_power_off (int *) ;
 int mt9m001_power_on (int *) ;
 int mt9m001_subdev_ops ;
 int mt9m001_video_probe (struct i2c_client*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_idle (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int v4l2_async_register_subdev (TYPE_2__*) ;
 int v4l2_ctrl_auto_cluster (int,int *,int ,int) ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 int v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (TYPE_3__*,int *,int ,int,int ,int ) ;
 int v4l2_i2c_subdev_init (TYPE_2__*,struct i2c_client*,int *) ;

__attribute__((used)) static int mt9m001_probe(struct i2c_client *client)
{
 struct mt9m001 *mt9m001;
 struct i2c_adapter *adapter = client->adapter;
 int ret;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_warn(&adapter->dev,
    "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
  return -EIO;
 }

 mt9m001 = devm_kzalloc(&client->dev, sizeof(*mt9m001), GFP_KERNEL);
 if (!mt9m001)
  return -ENOMEM;

 mt9m001->clk = devm_clk_get(&client->dev, ((void*)0));
 if (IS_ERR(mt9m001->clk))
  return PTR_ERR(mt9m001->clk);

 mt9m001->standby_gpio = devm_gpiod_get_optional(&client->dev, "standby",
       GPIOD_OUT_LOW);
 if (IS_ERR(mt9m001->standby_gpio))
  return PTR_ERR(mt9m001->standby_gpio);

 mt9m001->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
            GPIOD_OUT_LOW);
 if (IS_ERR(mt9m001->reset_gpio))
  return PTR_ERR(mt9m001->reset_gpio);

 v4l2_i2c_subdev_init(&mt9m001->subdev, client, &mt9m001_subdev_ops);
 mt9m001->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
     V4L2_SUBDEV_FL_HAS_EVENTS;
 v4l2_ctrl_handler_init(&mt9m001->hdl, 4);
 v4l2_ctrl_new_std(&mt9m001->hdl, &mt9m001_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&mt9m001->hdl, &mt9m001_ctrl_ops,
   V4L2_CID_GAIN, 0, 127, 1, 64);
 mt9m001->exposure = v4l2_ctrl_new_std(&mt9m001->hdl, &mt9m001_ctrl_ops,
   V4L2_CID_EXPOSURE, 1, 255, 1, 255);




 mt9m001->autoexposure = v4l2_ctrl_new_std_menu(&mt9m001->hdl,
   &mt9m001_ctrl_ops, V4L2_CID_EXPOSURE_AUTO, 1, 0,
   V4L2_EXPOSURE_AUTO);
 mt9m001->subdev.ctrl_handler = &mt9m001->hdl;
 if (mt9m001->hdl.error)
  return mt9m001->hdl.error;

 v4l2_ctrl_auto_cluster(2, &mt9m001->autoexposure,
     V4L2_EXPOSURE_MANUAL, 1);

 mutex_init(&mt9m001->mutex);
 mt9m001->hdl.lock = &mt9m001->mutex;


 mt9m001->y_skip_top = 0;
 mt9m001->rect.left = MT9M001_COLUMN_SKIP;
 mt9m001->rect.top = MT9M001_ROW_SKIP;
 mt9m001->rect.width = MT9M001_MAX_WIDTH;
 mt9m001->rect.height = MT9M001_MAX_HEIGHT;

 ret = mt9m001_power_on(&client->dev);
 if (ret)
  goto error_hdl_free;

 pm_runtime_set_active(&client->dev);
 pm_runtime_enable(&client->dev);

 ret = mt9m001_video_probe(client);
 if (ret)
  goto error_power_off;

 mt9m001->pad.flags = MEDIA_PAD_FL_SOURCE;
 mt9m001->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
 ret = media_entity_pads_init(&mt9m001->subdev.entity, 1, &mt9m001->pad);
 if (ret)
  goto error_power_off;

 ret = v4l2_async_register_subdev(&mt9m001->subdev);
 if (ret)
  goto error_entity_cleanup;

 pm_runtime_idle(&client->dev);

 return 0;

error_entity_cleanup:
 media_entity_cleanup(&mt9m001->subdev.entity);
error_power_off:
 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 mt9m001_power_off(&client->dev);

error_hdl_free:
 v4l2_ctrl_handler_free(&mt9m001->hdl);
 mutex_destroy(&mt9m001->mutex);

 return ret;
}
