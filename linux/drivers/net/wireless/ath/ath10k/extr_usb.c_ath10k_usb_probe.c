
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; int dev; } ;
struct ath10k_usb {struct ath10k* ar; } ;
struct ath10k_bus_params {scalar_t__ chip_id; int dev_type; } ;
struct TYPE_4__ {int vendor; int device; } ;
struct ath10k {int dev_id; TYPE_2__ id; } ;
typedef enum ath10k_hw_rev { ____Placeholder_ath10k_hw_rev } ath10k_hw_rev ;


 int ATH10K_BUS_USB ;
 int ATH10K_DBG_BOOT ;
 int ATH10K_DEV_TYPE_HL ;
 int ATH10K_HW_QCA9377 ;
 int ENOMEM ;
 struct ath10k* ath10k_core_create (int,int *,int ,int,int *) ;
 int ath10k_core_destroy (struct ath10k*) ;
 int ath10k_core_register (struct ath10k*,struct ath10k_bus_params*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 int ath10k_usb_create (struct ath10k*,struct usb_interface*) ;
 int ath10k_usb_hif_ops ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int dev_err (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static int ath10k_usb_probe(struct usb_interface *interface,
       const struct usb_device_id *id)
{
 struct ath10k *ar;
 struct ath10k_usb *ar_usb;
 struct usb_device *dev = interface_to_usbdev(interface);
 int ret, vendor_id, product_id;
 enum ath10k_hw_rev hw_rev;
 struct ath10k_bus_params bus_params = {};







 hw_rev = ATH10K_HW_QCA9377;

 ar = ath10k_core_create(sizeof(*ar_usb), &dev->dev, ATH10K_BUS_USB,
    hw_rev, &ath10k_usb_hif_ops);
 if (!ar) {
  dev_err(&dev->dev, "failed to allocate core\n");
  return -ENOMEM;
 }

 usb_get_dev(dev);
 vendor_id = le16_to_cpu(dev->descriptor.idVendor);
 product_id = le16_to_cpu(dev->descriptor.idProduct);

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "usb new func vendor 0x%04x product 0x%04x\n",
     vendor_id, product_id);

 ar_usb = ath10k_usb_priv(ar);
 ret = ath10k_usb_create(ar, interface);
 ar_usb->ar = ar;

 ar->dev_id = product_id;
 ar->id.vendor = vendor_id;
 ar->id.device = product_id;

 bus_params.dev_type = ATH10K_DEV_TYPE_HL;

 bus_params.chip_id = 0;
 ret = ath10k_core_register(ar, &bus_params);
 if (ret) {
  ath10k_warn(ar, "failed to register driver core: %d\n", ret);
  goto err;
 }


 ath10k_warn(ar, "Warning: ath10k USB support is incomplete, don't expect anything to work!\n");

 return 0;

err:
 ath10k_core_destroy(ar);

 usb_put_dev(dev);

 return ret;
}
