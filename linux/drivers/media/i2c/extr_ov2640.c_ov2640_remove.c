
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entity; } ;
struct ov2640_priv {int clk; TYPE_1__ subdev; int lock; int hdl; } ;
struct i2c_client {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov2640_priv* to_ov2640 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;

__attribute__((used)) static int ov2640_remove(struct i2c_client *client)
{
 struct ov2640_priv *priv = to_ov2640(client);

 v4l2_async_unregister_subdev(&priv->subdev);
 v4l2_ctrl_handler_free(&priv->hdl);
 mutex_destroy(&priv->lock);
 media_entity_cleanup(&priv->subdev.entity);
 v4l2_device_unregister_subdev(&priv->subdev);
 clk_disable_unprepare(priv->clk);
 return 0;
}
