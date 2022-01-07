
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {int regmap; int dev; } ;


 int BUG_ON (int) ;
 int EPERM ;
 int dev_vdbg (int ,char*,int ,unsigned short,unsigned short) ;
 int regmap_write (int ,unsigned short,int ) ;
 scalar_t__ wm831x_reg_locked (struct wm831x*,unsigned short) ;

__attribute__((used)) static int wm831x_write(struct wm831x *wm831x, unsigned short reg,
   int bytes, void *src)
{
 u16 *buf = src;
 int i, ret;

 BUG_ON(bytes % 2);
 BUG_ON(bytes <= 0);

 for (i = 0; i < bytes / 2; i++) {
  if (wm831x_reg_locked(wm831x, reg))
   return -EPERM;

  dev_vdbg(wm831x->dev, "Write %04x to R%d(0x%x)\n",
    buf[i], reg + i, reg + i);
  ret = regmap_write(wm831x->regmap, reg + i, buf[i]);
  if (ret != 0)
   return ret;
 }

 return 0;
}
