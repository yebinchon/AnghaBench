
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int dummy; } ;
struct regval {int const member_0; int member_1; int reg; int val; } ;
 int stk1160_write_reg (struct stk1160*,int,int ) ;

__attribute__((used)) static void stk1160_reg_reset(struct stk1160 *dev)
{
 int i;

 static const struct regval ctl[] = {
  {133 +2, 0x0078},

  {130 +1, 0x0000},
  {130 +3, 0x0002},

  {131, 0x0010},
  {131 +1, 0x0000},
  {131 +2, 0x0014},
  {131 +3, 0x000E},

  {132, 0x0046},


  {128, 0x0012},
  {129, 0x002D},
  {129 +1, 0x0001},
  {129 +2, 0x0000},
  {129 +3, 0x0000},
  {128, 0x0080},

  {0xffff, 0xffff}
 };

 for (i = 0; ctl[i].reg != 0xffff; i++)
  stk1160_write_reg(dev, ctl[i].reg, ctl[i].val);
}
