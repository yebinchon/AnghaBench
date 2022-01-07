
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int * msp430 ;
 int * pm_power_off ;

__attribute__((used)) static int dm355evm_msp_remove(struct i2c_client *client)
{
 pm_power_off = ((void*)0);
 msp430 = ((void*)0);
 return 0;
}
