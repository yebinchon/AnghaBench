
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_usb {int diag_resp_buffer; int diag_cmd_buffer; int interface; } ;
struct ath10k {int dummy; } ;


 int ath10k_usb_cleanup_pipe_resources (struct ath10k*) ;
 int ath10k_usb_flush_all (struct ath10k*) ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;
 int kfree (int ) ;
 int usb_set_intfdata (int ,int *) ;

__attribute__((used)) static void ath10k_usb_destroy(struct ath10k *ar)
{
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);

 ath10k_usb_flush_all(ar);
 ath10k_usb_cleanup_pipe_resources(ar);
 usb_set_intfdata(ar_usb->interface, ((void*)0));

 kfree(ar_usb->diag_cmd_buffer);
 kfree(ar_usb->diag_resp_buffer);
}
