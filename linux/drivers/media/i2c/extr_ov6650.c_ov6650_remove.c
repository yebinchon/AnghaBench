
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov6650 {int hdl; int subdev; int clk; } ;
struct i2c_client {int dummy; } ;


 struct ov6650* to_ov6650 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (int *) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov6650_remove(struct i2c_client *client)
{
 struct ov6650 *priv = to_ov6650(client);

 v4l2_clk_put(priv->clk);
 v4l2_async_unregister_subdev(&priv->subdev);
 v4l2_ctrl_handler_free(&priv->hdl);
 return 0;
}
