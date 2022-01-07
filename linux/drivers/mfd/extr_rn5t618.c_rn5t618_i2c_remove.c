
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rn5t618 {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct rn5t618* i2c_get_clientdata (struct i2c_client*) ;
 int * pm_power_off ;
 struct rn5t618* rn5t618_pm_power_off ;
 int rn5t618_restart_handler ;
 int unregister_restart_handler (int *) ;

__attribute__((used)) static int rn5t618_i2c_remove(struct i2c_client *i2c)
{
 struct rn5t618 *priv = i2c_get_clientdata(i2c);

 if (priv == rn5t618_pm_power_off) {
  rn5t618_pm_power_off = ((void*)0);
  pm_power_off = ((void*)0);
 }

 unregister_restart_handler(&rn5t618_restart_handler);

 return 0;
}
