
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t112_priv {int subdev; int clk; } ;
struct i2c_client {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct mt9t112_priv* to_mt9t112 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (int *) ;

__attribute__((used)) static int mt9t112_remove(struct i2c_client *client)
{
 struct mt9t112_priv *priv = to_mt9t112(client);

 clk_disable_unprepare(priv->clk);
 v4l2_async_unregister_subdev(&priv->subdev);

 return 0;
}
