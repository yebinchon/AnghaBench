
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct solo_dev {TYPE_1__* i2c_adap; } ;
struct TYPE_2__ {int * algo_data; } ;


 int SOLO_I2C_ADAPTERS ;
 int i2c_del_adapter (TYPE_1__*) ;

void solo_i2c_exit(struct solo_dev *solo_dev)
{
 int i;

 for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
  if (!solo_dev->i2c_adap[i].algo_data)
   continue;
  i2c_del_adapter(&solo_dev->i2c_adap[i]);
  solo_dev->i2c_adap[i].algo_data = ((void*)0);
 }
}
