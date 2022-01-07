
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {int capabilities; } ;
struct kvaser_usb {TYPE_1__* intf; TYPE_2__ card_data; } ;
struct TYPE_3__ {int dev; } ;


 int KVASER_USB_CAP_EXT_CAP ;
 int KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT ;
 int KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE ;
 int KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT ;
 int dev_info (int *,char*,...) ;
 int kvaser_usb_hydra_get_single_capability (struct kvaser_usb*,int ,scalar_t__*) ;

__attribute__((used)) static int kvaser_usb_hydra_get_capabilities(struct kvaser_usb *dev)
{
 int err;
 u16 status;

 if (!(dev->card_data.capabilities & KVASER_USB_CAP_EXT_CAP)) {
  dev_info(&dev->intf->dev,
    "No extended capability support. Upgrade your device.\n");
  return 0;
 }

 err = kvaser_usb_hydra_get_single_capability
     (dev,
      KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE,
      &status);
 if (err)
  return err;
 if (status)
  dev_info(&dev->intf->dev,
    "KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE failed %u\n",
    status);

 err = kvaser_usb_hydra_get_single_capability
     (dev,
      KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT,
      &status);
 if (err)
  return err;
 if (status)
  dev_info(&dev->intf->dev,
    "KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT failed %u\n",
    status);

 err = kvaser_usb_hydra_get_single_capability
     (dev, KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT,
      &status);
 if (err)
  return err;
 if (status)
  dev_info(&dev->intf->dev,
    "KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT failed %u\n",
    status);

 return 0;
}
