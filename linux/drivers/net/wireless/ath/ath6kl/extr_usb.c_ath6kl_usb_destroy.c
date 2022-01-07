
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_usb {struct ath6kl_usb* diag_resp_buffer; struct ath6kl_usb* diag_cmd_buffer; int interface; } ;


 int ath6kl_usb_cleanup_pipe_resources (struct ath6kl_usb*) ;
 int ath6kl_usb_flush_all (struct ath6kl_usb*) ;
 int kfree (struct ath6kl_usb*) ;
 int usb_set_intfdata (int ,int *) ;

__attribute__((used)) static void ath6kl_usb_destroy(struct ath6kl_usb *ar_usb)
{
 ath6kl_usb_flush_all(ar_usb);

 ath6kl_usb_cleanup_pipe_resources(ar_usb);

 usb_set_intfdata(ar_usb->interface, ((void*)0));

 kfree(ar_usb->diag_cmd_buffer);
 kfree(ar_usb->diag_resp_buffer);

 kfree(ar_usb);
}
