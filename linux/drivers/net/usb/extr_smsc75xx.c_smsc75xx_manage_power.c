
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* intf; } ;
struct TYPE_2__ {int needs_remote_wakeup; } ;



__attribute__((used)) static int smsc75xx_manage_power(struct usbnet *dev, int on)
{
 dev->intf->needs_remote_wakeup = on;
 return 0;
}
