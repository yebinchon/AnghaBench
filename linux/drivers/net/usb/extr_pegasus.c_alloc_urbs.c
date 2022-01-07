
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* rx_urb; void* tx_urb; void* intr_urb; } ;
typedef TYPE_1__ pegasus_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (void*) ;

__attribute__((used)) static int alloc_urbs(pegasus_t *pegasus)
{
 int res = -ENOMEM;

 pegasus->rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pegasus->rx_urb) {
  return res;
 }
 pegasus->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pegasus->tx_urb) {
  usb_free_urb(pegasus->rx_urb);
  return res;
 }
 pegasus->intr_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pegasus->intr_urb) {
  usb_free_urb(pegasus->tx_urb);
  usb_free_urb(pegasus->rx_urb);
  return res;
 }

 return 0;
}
