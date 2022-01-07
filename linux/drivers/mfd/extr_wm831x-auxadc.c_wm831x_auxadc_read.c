
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int (* auxadc_read ) (struct wm831x*,int) ;} ;
typedef enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;


 int stub1 (struct wm831x*,int) ;

int wm831x_auxadc_read(struct wm831x *wm831x, enum wm831x_auxadc input)
{
 return wm831x->auxadc_read(wm831x, input);
}
