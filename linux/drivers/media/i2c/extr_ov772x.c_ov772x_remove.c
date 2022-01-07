
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct ov772x_priv {int lock; int hdl; TYPE_1__ subdev; scalar_t__ pwdn_gpio; int clk; } ;
struct i2c_client {int dummy; } ;


 int clk_put (int ) ;
 int gpiod_put (scalar_t__) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov772x_priv* to_ov772x (int ) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov772x_remove(struct i2c_client *client)
{
 struct ov772x_priv *priv = to_ov772x(i2c_get_clientdata(client));

 media_entity_cleanup(&priv->subdev.entity);
 clk_put(priv->clk);
 if (priv->pwdn_gpio)
  gpiod_put(priv->pwdn_gpio);
 v4l2_async_unregister_subdev(&priv->subdev);
 v4l2_ctrl_handler_free(&priv->hdl);
 mutex_destroy(&priv->lock);

 return 0;
}
