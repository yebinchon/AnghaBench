
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc3589x {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tc3589x_reg_read (struct tc3589x*,int) ;
 int tc3589x_reg_write (struct tc3589x*,int,int) ;

int tc3589x_set_bits(struct tc3589x *tc3589x, u8 reg, u8 mask, u8 val)
{
 int ret;

 mutex_lock(&tc3589x->lock);

 ret = tc3589x_reg_read(tc3589x, reg);
 if (ret < 0)
  goto out;

 ret &= ~mask;
 ret |= val;

 ret = tc3589x_reg_write(tc3589x, reg, ret);

out:
 mutex_unlock(&tc3589x->lock);
 return ret;
}
