
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int locked; } ;
__attribute__((used)) static int wm831x_reg_locked(struct wm831x *wm831x, unsigned short reg)
{
 if (!wm831x->locked)
  return 0;

 switch (reg) {
 case 128:
 case 130:
 case 129:
 case 133:
 case 132:
 case 131:
  return 1;

 default:
  return 0;
 }
}
