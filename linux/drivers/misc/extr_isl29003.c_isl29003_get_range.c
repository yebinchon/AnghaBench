
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ISL29003_RANGE_MASK ;
 int ISL29003_RANGE_SHIFT ;
 int ISL29003_REG_CONTROL ;
 int __isl29003_read_reg (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int isl29003_get_range(struct i2c_client *client)
{
 return __isl29003_read_reg(client, ISL29003_REG_CONTROL,
  ISL29003_RANGE_MASK, ISL29003_RANGE_SHIFT);
}
