
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct ak881x {int subdev; } ;


 struct ak881x* to_ak881x (struct i2c_client*) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int ak881x_remove(struct i2c_client *client)
{
 struct ak881x *ak881x = to_ak881x(client);

 v4l2_device_unregister_subdev(&ak881x->subdev);

 return 0;
}
