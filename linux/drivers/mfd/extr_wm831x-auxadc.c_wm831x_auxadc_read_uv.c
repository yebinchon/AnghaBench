
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;
typedef enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;


 int wm831x_auxadc_read (struct wm831x*,int) ;

int wm831x_auxadc_read_uv(struct wm831x *wm831x, enum wm831x_auxadc input)
{
 int ret;

 ret = wm831x_auxadc_read(wm831x, input);
 if (ret < 0)
  return ret;

 ret *= 1465;

 return ret;
}
