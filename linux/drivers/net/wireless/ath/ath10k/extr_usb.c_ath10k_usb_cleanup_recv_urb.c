
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_urb_context {int pipe; int * skb; } ;


 int ath10k_usb_free_urb_to_pipe (int ,struct ath10k_urb_context*) ;
 int dev_kfree_skb (int *) ;

__attribute__((used)) static void ath10k_usb_cleanup_recv_urb(struct ath10k_urb_context *urb_context)
{
 dev_kfree_skb(urb_context->skb);
 urb_context->skb = ((void*)0);

 ath10k_usb_free_urb_to_pipe(urb_context->pipe, urb_context);
}
