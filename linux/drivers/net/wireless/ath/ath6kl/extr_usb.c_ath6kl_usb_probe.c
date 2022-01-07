
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int idProduct; int idVendor; } ;
struct usb_device {scalar_t__ speed; TYPE_1__ descriptor; } ;
struct ath6kl_usb {struct ath6kl* ar; TYPE_4__* udev; } ;
struct TYPE_12__ {int max_data_size; } ;
struct TYPE_11__ {int block_size; } ;
struct ath6kl {TYPE_6__ bmi; TYPE_5__ mbox_info; int * hif_ops; int hif_type; struct ath6kl_usb* hif_priv; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_8__ {int bInterfaceNumber; } ;
struct TYPE_9__ {TYPE_2__ desc; } ;


 int ATH6KL_DBG_USB ;
 int ATH6KL_HIF_TYPE_USB ;
 int ATH6KL_HTC_TYPE_PIPE ;
 int ENOMEM ;
 scalar_t__ USB_SPEED_HIGH ;
 struct ath6kl* ath6kl_core_create (int *) ;
 int ath6kl_core_destroy (struct ath6kl*) ;
 int ath6kl_core_init (struct ath6kl*,int ) ;
 int ath6kl_dbg (int ,char*,...) ;
 int ath6kl_err (char*,...) ;
 struct ath6kl_usb* ath6kl_usb_create (struct usb_interface*) ;
 int ath6kl_usb_destroy (struct ath6kl_usb*) ;
 int ath6kl_usb_ops ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static int ath6kl_usb_probe(struct usb_interface *interface,
       const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(interface);
 struct ath6kl *ar;
 struct ath6kl_usb *ar_usb = ((void*)0);
 int vendor_id, product_id;
 int ret = 0;

 usb_get_dev(dev);

 vendor_id = le16_to_cpu(dev->descriptor.idVendor);
 product_id = le16_to_cpu(dev->descriptor.idProduct);

 ath6kl_dbg(ATH6KL_DBG_USB, "vendor_id = %04x\n", vendor_id);
 ath6kl_dbg(ATH6KL_DBG_USB, "product_id = %04x\n", product_id);

 if (interface->cur_altsetting)
  ath6kl_dbg(ATH6KL_DBG_USB, "USB Interface %d\n",
      interface->cur_altsetting->desc.bInterfaceNumber);


 if (dev->speed == USB_SPEED_HIGH)
  ath6kl_dbg(ATH6KL_DBG_USB, "USB 2.0 Host\n");
 else
  ath6kl_dbg(ATH6KL_DBG_USB, "USB 1.1 Host\n");

 ar_usb = ath6kl_usb_create(interface);

 if (ar_usb == ((void*)0)) {
  ret = -ENOMEM;
  goto err_usb_put;
 }

 ar = ath6kl_core_create(&ar_usb->udev->dev);
 if (ar == ((void*)0)) {
  ath6kl_err("Failed to alloc ath6kl core\n");
  ret = -ENOMEM;
  goto err_usb_destroy;
 }

 ar->hif_priv = ar_usb;
 ar->hif_type = ATH6KL_HIF_TYPE_USB;
 ar->hif_ops = &ath6kl_usb_ops;
 ar->mbox_info.block_size = 16;
 ar->bmi.max_data_size = 252;

 ar_usb->ar = ar;

 ret = ath6kl_core_init(ar, ATH6KL_HTC_TYPE_PIPE);
 if (ret) {
  ath6kl_err("Failed to init ath6kl core: %d\n", ret);
  goto err_core_free;
 }

 return ret;

err_core_free:
 ath6kl_core_destroy(ar);
err_usb_destroy:
 ath6kl_usb_destroy(ar_usb);
err_usb_put:
 usb_put_dev(dev);

 return ret;
}
