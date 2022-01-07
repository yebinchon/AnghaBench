
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath9k_hif_usb_driver ;
 int usb_register (int *) ;

int ath9k_hif_usb_init(void)
{
 return usb_register(&ath9k_hif_usb_driver);
}
