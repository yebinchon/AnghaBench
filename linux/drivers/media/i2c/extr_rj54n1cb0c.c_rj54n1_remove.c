
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rj54n1 {int subdev; int hdl; int clk; scalar_t__ pwup_gpio; scalar_t__ enable_gpio; } ;
struct i2c_client {int dummy; } ;


 int clk_put (int ) ;
 int gpiod_put (scalar_t__) ;
 struct rj54n1* to_rj54n1 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (int *) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int rj54n1_remove(struct i2c_client *client)
{
 struct rj54n1 *rj54n1 = to_rj54n1(client);

 if (rj54n1->enable_gpio)
  gpiod_put(rj54n1->enable_gpio);
 if (rj54n1->pwup_gpio)
  gpiod_put(rj54n1->pwup_gpio);

 clk_put(rj54n1->clk);
 v4l2_ctrl_handler_free(&rj54n1->hdl);
 v4l2_async_unregister_subdev(&rj54n1->subdev);

 return 0;
}
