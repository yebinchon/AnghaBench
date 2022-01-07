
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_usb {int * pipes; } ;
struct ath10k {int dummy; } ;


 int ATH10K_USB_PIPE_MAX ;
 int ath10k_usb_free_pipe_resources (struct ath10k*,int *) ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;

__attribute__((used)) static void ath10k_usb_cleanup_pipe_resources(struct ath10k *ar)
{
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);
 int i;

 for (i = 0; i < ATH10K_USB_PIPE_MAX; i++)
  ath10k_usb_free_pipe_resources(ar, &ar_usb->pipes[i]);
}
