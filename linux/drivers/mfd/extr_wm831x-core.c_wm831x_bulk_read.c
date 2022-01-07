
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {int regmap; } ;


 int regmap_bulk_read (int ,unsigned short,int *,int) ;

int wm831x_bulk_read(struct wm831x *wm831x, unsigned short reg,
       int count, u16 *buf)
{
 return regmap_bulk_read(wm831x->regmap, reg, buf, count);
}
