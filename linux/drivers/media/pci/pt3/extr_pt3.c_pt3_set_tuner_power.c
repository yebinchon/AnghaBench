
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val {int member_0; int member_1; int val; } ;
struct pt3_board {int * adaps; } ;


 int PT3_NUM_FE ;
 int pt3_demod_write (int ,struct reg_val*,int) ;

__attribute__((used)) static int
pt3_set_tuner_power(struct pt3_board *pt3, bool tuner_on, bool amp_on)
{
 struct reg_val rv = { 0x1e, 0x99 };

 if (tuner_on)
  rv.val |= 0x40;
 if (amp_on)
  rv.val |= 0x04;
 return pt3_demod_write(pt3->adaps[PT3_NUM_FE - 1], &rv, 1);
}
