
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_usb {int * pipes; } ;


 int ATH6KL_USB_PIPE_MAX ;
 int ath6kl_usb_free_pipe_resources (int *) ;

__attribute__((used)) static void ath6kl_usb_cleanup_pipe_resources(struct ath6kl_usb *ar_usb)
{
 int i;

 for (i = 0; i < ATH6KL_USB_PIPE_MAX; i++)
  ath6kl_usb_free_pipe_resources(&ar_usb->pipes[i]);
}
