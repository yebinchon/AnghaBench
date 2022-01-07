
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* ctrl_handler; } ;
struct TYPE_9__ {int error; } ;
struct ml86v7667_priv {TYPE_1__ sd; TYPE_3__ hdl; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {TYPE_7__* adapter; int addr; int dev; } ;
struct TYPE_10__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CHROMA_GAIN ;
 int V4L2_CID_COLOR_KILLER ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SHARPNESS ;
 struct ml86v7667_priv* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_7__*,int ) ;
 int ml86v7667_ctrl_ops ;
 int ml86v7667_init (struct ml86v7667_priv*) ;
 int ml86v7667_subdev_ops ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_3__*) ;
 int v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int,int,int,int ) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;
 int v4l_err (struct i2c_client*,char*,int ,int ) ;
 int v4l_info (struct i2c_client*,char*,int ,int ) ;

__attribute__((used)) static int ml86v7667_probe(struct i2c_client *client,
      const struct i2c_device_id *did)
{
 struct ml86v7667_priv *priv;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 priv = devm_kzalloc(&client->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 v4l2_i2c_subdev_init(&priv->sd, client, &ml86v7667_subdev_ops);

 v4l2_ctrl_handler_init(&priv->hdl, 8);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_BRIGHTNESS, -64, 63, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_CONTRAST, -8, 7, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_CHROMA_GAIN, -32, 31, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_HUE, -128, 127, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_RED_BALANCE, -4, 3, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_BLUE_BALANCE, -4, 3, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_SHARPNESS, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ml86v7667_ctrl_ops,
     V4L2_CID_COLOR_KILLER, 0, 1, 1, 0);
 priv->sd.ctrl_handler = &priv->hdl;

 ret = priv->hdl.error;
 if (ret)
  goto cleanup;

 v4l2_ctrl_handler_setup(&priv->hdl);

 ret = ml86v7667_init(priv);
 if (ret)
  goto cleanup;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr, client->adapter->name);
 return 0;

cleanup:
 v4l2_ctrl_handler_free(&priv->hdl);
 v4l2_device_unregister_subdev(&priv->sd);
 v4l_err(client, "failed to probe @ 0x%02x (%s)\n",
  client->addr, client->adapter->name);
 return ret;
}
