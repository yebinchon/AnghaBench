
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int intr_urb; int tx_urb; int rx_urb; } ;
typedef TYPE_1__ rtl8150_t ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void unlink_all_urbs(rtl8150_t * dev)
{
 usb_kill_urb(dev->rx_urb);
 usb_kill_urb(dev->tx_urb);
 usb_kill_urb(dev->intr_urb);
}
