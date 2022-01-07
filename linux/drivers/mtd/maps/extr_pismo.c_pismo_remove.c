
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pismo_data {int * dev; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 struct pismo_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct pismo_data*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int pismo_remove(struct i2c_client *client)
{
 struct pismo_data *pismo = i2c_get_clientdata(client);
 int i;

 for (i = 0; i < ARRAY_SIZE(pismo->dev); i++)
  platform_device_unregister(pismo->dev[i]);

 kfree(pismo);

 return 0;
}
