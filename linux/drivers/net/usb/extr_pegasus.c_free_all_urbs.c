
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_urb; int tx_urb; int intr_urb; } ;
typedef TYPE_1__ pegasus_t ;


 int usb_free_urb (int ) ;

__attribute__((used)) static void free_all_urbs(pegasus_t *pegasus)
{
 usb_free_urb(pegasus->intr_urb);
 usb_free_urb(pegasus->tx_urb);
 usb_free_urb(pegasus->rx_urb);
}
