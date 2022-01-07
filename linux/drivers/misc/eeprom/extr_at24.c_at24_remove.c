
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int at24_remove(struct i2c_client *client)
{
 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);

 return 0;
}
