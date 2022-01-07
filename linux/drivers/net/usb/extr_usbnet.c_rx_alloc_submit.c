
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qlen; } ;
struct usbnet {TYPE_1__ rxq; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ RX_QLEN (struct usbnet*) ;
 int rx_submit (struct usbnet*,struct urb*,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int rx_alloc_submit(struct usbnet *dev, gfp_t flags)
{
 struct urb *urb;
 int i;
 int ret = 0;


 for (i = 0; i < 10 && dev->rxq.qlen < RX_QLEN(dev); i++) {
  urb = usb_alloc_urb(0, flags);
  if (urb != ((void*)0)) {
   ret = rx_submit(dev, urb, flags);
   if (ret)
    goto err;
  } else {
   ret = -ENOMEM;
   goto err;
  }
 }
err:
 return ret;
}
