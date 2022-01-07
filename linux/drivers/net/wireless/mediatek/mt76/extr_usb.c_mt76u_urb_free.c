
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int num_sgs; scalar_t__ transfer_buffer; int * sg; } ;


 scalar_t__ sg_virt (int *) ;
 int skb_free_frag (scalar_t__) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void mt76u_urb_free(struct urb *urb)
{
 int i;

 for (i = 0; i < urb->num_sgs; i++)
  skb_free_frag(sg_virt(&urb->sg[i]));

 if (urb->transfer_buffer)
  skb_free_frag(urb->transfer_buffer);

 usb_free_urb(urb);
}
