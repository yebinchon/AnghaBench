
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath9k_hif_usb_driver ;
 int usb_deregister (int *) ;

void ath9k_hif_usb_exit(void)
{
 usb_deregister(&ath9k_hif_usb_driver);
}
