
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* tx_urb; void* rx_urb; void* intr_urb; } ;
typedef TYPE_1__ rtl8150_t ;


 int GFP_KERNEL ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (void*) ;

__attribute__((used)) static int alloc_all_urbs(rtl8150_t * dev)
{
 dev->rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->rx_urb)
  return 0;
 dev->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->tx_urb) {
  usb_free_urb(dev->rx_urb);
  return 0;
 }
 dev->intr_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->intr_urb) {
  usb_free_urb(dev->rx_urb);
  usb_free_urb(dev->tx_urb);
  return 0;
 }

 return 1;
}
