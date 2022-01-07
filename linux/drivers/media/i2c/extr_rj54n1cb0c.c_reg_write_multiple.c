
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rj54n1_reg_val {int val; int reg; } ;
struct i2c_client {int dummy; } ;


 int reg_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int reg_write_multiple(struct i2c_client *client,
         const struct rj54n1_reg_val *rv, const int n)
{
 int i, ret;

 for (i = 0; i < n; i++) {
  ret = reg_write(client, rv->reg, rv->val);
  if (ret < 0)
   return ret;
  rv++;
 }

 return 0;
}
