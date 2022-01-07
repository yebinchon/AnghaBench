
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov9640_priv {int hdl; int subdev; int clk; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 struct ov9640_priv* to_ov9640_sensor (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (int *) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov9640_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov9640_priv *priv = to_ov9640_sensor(sd);

 v4l2_clk_put(priv->clk);
 v4l2_async_unregister_subdev(&priv->subdev);
 v4l2_ctrl_handler_free(&priv->hdl);

 return 0;
}
