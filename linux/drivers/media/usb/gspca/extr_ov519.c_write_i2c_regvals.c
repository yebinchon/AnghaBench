
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct ov_i2c_regvals {int val; int reg; } ;


 int i2c_w (struct sd*,int ,int ) ;

__attribute__((used)) static void write_i2c_regvals(struct sd *sd,
   const struct ov_i2c_regvals *regvals,
   int n)
{
 while (--n >= 0) {
  i2c_w(sd, regvals->reg, regvals->val);
  regvals++;
 }
}
