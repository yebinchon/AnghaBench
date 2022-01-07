
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int io_lock; int regmap; } ;


 int EPERM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,unsigned short,unsigned short,unsigned short) ;
 int wm831x_reg_locked (struct wm831x*,unsigned short) ;

int wm831x_set_bits(struct wm831x *wm831x, unsigned short reg,
      unsigned short mask, unsigned short val)
{
 int ret;

 mutex_lock(&wm831x->io_lock);

 if (!wm831x_reg_locked(wm831x, reg))
  ret = regmap_update_bits(wm831x->regmap, reg, mask, val);
 else
  ret = -EPERM;

 mutex_unlock(&wm831x->io_lock);

 return ret;
}
