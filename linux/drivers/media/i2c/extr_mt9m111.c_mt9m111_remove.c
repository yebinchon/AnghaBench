
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct mt9m111 {int hdl; int clk; TYPE_1__ subdev; } ;
struct i2c_client {int dummy; } ;


 int media_entity_cleanup (int *) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int mt9m111_remove(struct i2c_client *client)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);

 v4l2_async_unregister_subdev(&mt9m111->subdev);
 media_entity_cleanup(&mt9m111->subdev.entity);
 v4l2_clk_put(mt9m111->clk);
 v4l2_ctrl_handler_free(&mt9m111->hdl);

 return 0;
}
