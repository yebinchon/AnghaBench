
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hif_device_usb {TYPE_1__* udev; int fw_name; } ;
struct TYPE_2__ {int dev; } ;


 int ath9k_hif_usb_alloc_urbs (struct hif_device_usb*) ;
 int ath9k_hif_usb_download_fw (struct hif_device_usb*) ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static int ath9k_hif_usb_dev_init(struct hif_device_usb *hif_dev)
{
 int ret;

 ret = ath9k_hif_usb_download_fw(hif_dev);
 if (ret) {
  dev_err(&hif_dev->udev->dev,
   "ath9k_htc: Firmware - %s download failed\n",
   hif_dev->fw_name);
  return ret;
 }


 ret = ath9k_hif_usb_alloc_urbs(hif_dev);
 if (ret) {
  dev_err(&hif_dev->udev->dev,
   "ath9k_htc: Unable to allocate URBs\n");
  return ret;
 }

 return 0;
}
