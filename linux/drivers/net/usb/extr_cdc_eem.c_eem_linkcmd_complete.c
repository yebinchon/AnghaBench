
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int context; } ;


 int dev_kfree_skb (int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void eem_linkcmd_complete(struct urb *urb)
{
 dev_kfree_skb(urb->context);
 usb_free_urb(urb);
}
