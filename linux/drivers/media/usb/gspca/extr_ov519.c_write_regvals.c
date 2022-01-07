
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct ov_regvals {int val; int reg; } ;


 int reg_w (struct sd*,int ,int ) ;

__attribute__((used)) static void write_regvals(struct sd *sd,
    const struct ov_regvals *regvals,
    int n)
{
 while (--n >= 0) {
  reg_w(sd, regvals->reg, regvals->val);
  regvals++;
 }
}
