
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw9910_priv {int subdev; int clk; scalar_t__ pdn_gpio; } ;
struct i2c_client {int dummy; } ;


 int clk_put (int ) ;
 int gpiod_put (scalar_t__) ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (int *) ;

__attribute__((used)) static int tw9910_remove(struct i2c_client *client)
{
 struct tw9910_priv *priv = to_tw9910(client);

 if (priv->pdn_gpio)
  gpiod_put(priv->pdn_gpio);
 clk_put(priv->clk);
 v4l2_async_unregister_subdev(&priv->subdev);

 return 0;
}
