
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int val; int addr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* max8998_dump ;
 int max8998_read_reg (struct i2c_client*,int ,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int max8998_freeze(struct device *dev)
{
 struct i2c_client *i2c = to_i2c_client(dev);
 int i;

 for (i = 0; i < ARRAY_SIZE(max8998_dump); i++)
  max8998_read_reg(i2c, max8998_dump[i].addr,
    &max8998_dump[i].val);

 return 0;
}
