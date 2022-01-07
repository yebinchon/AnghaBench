
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {int error; int * lock; } ;
struct TYPE_15__ {int function; } ;
struct TYPE_13__ {int flags; TYPE_7__ entity; TYPE_2__* ctrl_handler; } ;
struct TYPE_16__ {int flags; } ;
struct ov2640_priv {int clk; int lock; TYPE_2__ hdl; TYPE_1__ subdev; TYPE_8__ pad; int cfmt_code; int win; } ;
struct TYPE_12__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_10__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dev; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int PTR_ERR (int ) ;
 int SVGA_HEIGHT ;
 int SVGA_WIDTH ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VFLIP ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int devm_clk_get (TYPE_10__*,char*) ;
 struct ov2640_priv* devm_kzalloc (TYPE_10__*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int media_entity_cleanup (TYPE_7__*) ;
 int media_entity_pads_init (TYPE_7__*,int,TYPE_8__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int ov2640_ctrl_ops ;
 int ov2640_probe_dt (struct i2c_client*,struct ov2640_priv*) ;
 int ov2640_select_win (int ,int ) ;
 int ov2640_subdev_ops ;
 int ov2640_test_pattern_menu ;
 int ov2640_video_probe (struct i2c_client*) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int,int,int ) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_2__*,int *,int ,scalar_t__,int ,int ,int ) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;

__attribute__((used)) static int ov2640_probe(struct i2c_client *client)
{
 struct ov2640_priv *priv;
 struct i2c_adapter *adapter = client->adapter;
 int ret;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(&adapter->dev,
   "OV2640: I2C-Adapter doesn't support SMBUS\n");
  return -EIO;
 }

 priv = devm_kzalloc(&client->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 if (client->dev.of_node) {
  priv->clk = devm_clk_get(&client->dev, "xvclk");
  if (IS_ERR(priv->clk))
   return PTR_ERR(priv->clk);
  ret = clk_prepare_enable(priv->clk);
  if (ret)
   return ret;
 }

 ret = ov2640_probe_dt(client, priv);
 if (ret)
  goto err_clk;

 priv->win = ov2640_select_win(SVGA_WIDTH, SVGA_HEIGHT);
 priv->cfmt_code = MEDIA_BUS_FMT_UYVY8_2X8;

 v4l2_i2c_subdev_init(&priv->subdev, client, &ov2640_subdev_ops);
 priv->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
         V4L2_SUBDEV_FL_HAS_EVENTS;
 mutex_init(&priv->lock);
 v4l2_ctrl_handler_init(&priv->hdl, 3);
 priv->hdl.lock = &priv->lock;
 v4l2_ctrl_new_std(&priv->hdl, &ov2640_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ov2640_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std_menu_items(&priv->hdl, &ov2640_ctrl_ops,
   V4L2_CID_TEST_PATTERN,
   ARRAY_SIZE(ov2640_test_pattern_menu) - 1, 0, 0,
   ov2640_test_pattern_menu);
 priv->subdev.ctrl_handler = &priv->hdl;
 if (priv->hdl.error) {
  ret = priv->hdl.error;
  goto err_hdl;
 }
 ret = ov2640_video_probe(client);
 if (ret < 0)
  goto err_videoprobe;

 ret = v4l2_async_register_subdev(&priv->subdev);
 if (ret < 0)
  goto err_videoprobe;

 dev_info(&adapter->dev, "OV2640 Probed\n");

 return 0;

err_videoprobe:
 media_entity_cleanup(&priv->subdev.entity);
err_hdl:
 v4l2_ctrl_handler_free(&priv->hdl);
 mutex_destroy(&priv->lock);
err_clk:
 clk_disable_unprepare(priv->clk);
 return ret;
}
