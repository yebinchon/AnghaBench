
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int ax88772_restore_phy (struct usbnet*) ;
 int ax88772a_hw_reset (struct usbnet*,int) ;

__attribute__((used)) static void ax88772a_resume(struct usbnet *dev)
{
 int i;

 for (i = 0; i < 3; i++) {
  if (!ax88772a_hw_reset(dev, 1))
   break;
 }

 ax88772_restore_phy(dev);
}
