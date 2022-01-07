
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hif_device_usb {int dummy; } ;


 int ath9k_hif_usb_dealloc_urbs (struct hif_device_usb*) ;

__attribute__((used)) static void ath9k_hif_usb_dev_deinit(struct hif_device_usb *hif_dev)
{
 ath9k_hif_usb_dealloc_urbs(hif_dev);
}
