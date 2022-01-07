
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_usb_card {int dummy; } ;


 int __if_usb_submit_rx_urb (struct if_usb_card*,int *) ;
 int if_usb_receive ;

__attribute__((used)) static int if_usb_submit_rx_urb(struct if_usb_card *cardp)
{
 return __if_usb_submit_rx_urb(cardp, &if_usb_receive);
}
