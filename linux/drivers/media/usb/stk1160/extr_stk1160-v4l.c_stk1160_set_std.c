
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int norm; } ;
struct regval {int member_0; int member_1; int reg; int val; } ;
 int V4L2_STD_525_60 ;
 int stk1160_dbg (char*) ;
 int stk1160_write_reg (struct stk1160*,int,int ) ;

__attribute__((used)) static void stk1160_set_std(struct stk1160 *dev)
{
 int i;

 static struct regval std525[] = {




  {130, 0x0000},
  {131, 0x0000},
  {128, 0x0003},
  {129, 0x0000},


  {135, 0x05a0},
  {136, 0x0005},
  {133, 0x00f3},
  {134, 0x0000},

  {0xffff, 0xffff}
 };

 static struct regval std625[] = {





  {132, 0x0000},
  {132 +1, 0x0000},
  {132 +2, 0x0001},
  {132 +3, 0x0000},


  {137, 0x05a0},
  {137 +1, 0x0005},
  {137 +2, 0x0121},
  {137 +3, 0x0001},

  {0xffff, 0xffff}
 };

 if (dev->norm & V4L2_STD_525_60) {
  stk1160_dbg("registers to NTSC like standard\n");
  for (i = 0; std525[i].reg != 0xffff; i++)
   stk1160_write_reg(dev, std525[i].reg, std525[i].val);
 } else {
  stk1160_dbg("registers to PAL like standard\n");
  for (i = 0; std625[i].reg != 0xffff; i++)
   stk1160_write_reg(dev, std625[i].reg, std625[i].val);
 }

}
