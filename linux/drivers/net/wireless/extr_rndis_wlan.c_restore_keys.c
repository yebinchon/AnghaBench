
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int restore_key (struct usbnet*,int) ;

__attribute__((used)) static void restore_keys(struct usbnet *usbdev)
{
 int i;

 for (i = 0; i < 4; i++)
  restore_key(usbdev, i);
}
