
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_usb_dev_card_data_hydra {scalar_t__ sysdbg_he; int channel_to_he; int usb_rx_leftover_lock; scalar_t__ usb_rx_leftover_len; int usb_rx_leftover; int transid_lock; int transid; } ;
struct TYPE_3__ {struct kvaser_usb_dev_card_data_hydra hydra; } ;
struct kvaser_usb {TYPE_2__* intf; TYPE_1__ card_data; } ;
struct TYPE_4__ {int dev; } ;


 int KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL ;
 int KVASER_USB_HYDRA_MAX_CMD_LEN ;
 int KVASER_USB_HYDRA_MIN_TRANSID ;
 unsigned int KVASER_USB_HYDRA_TRANSID_CANHE ;
 unsigned int KVASER_USB_HYDRA_TRANSID_SYSDBG ;
 unsigned int KVASER_USB_MAX_NET_DEVICES ;
 int dev_err (int *,char*,...) ;
 int kvaser_usb_hydra_map_channel (struct kvaser_usb*,unsigned int,unsigned int,char*) ;
 int memset (int ,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int kvaser_usb_hydra_init_card(struct kvaser_usb *dev)
{
 int err;
 unsigned int i;
 struct kvaser_usb_dev_card_data_hydra *card_data =
       &dev->card_data.hydra;

 card_data->transid = KVASER_USB_HYDRA_MIN_TRANSID;
 spin_lock_init(&card_data->transid_lock);

 memset(card_data->usb_rx_leftover, 0, KVASER_USB_HYDRA_MAX_CMD_LEN);
 card_data->usb_rx_leftover_len = 0;
 spin_lock_init(&card_data->usb_rx_leftover_lock);

 memset(card_data->channel_to_he, KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL,
        sizeof(card_data->channel_to_he));
 card_data->sysdbg_he = 0;

 for (i = 0; i < KVASER_USB_MAX_NET_DEVICES; i++) {
  err = kvaser_usb_hydra_map_channel
     (dev,
      (KVASER_USB_HYDRA_TRANSID_CANHE | i),
      i, "CAN");
  if (err) {
   dev_err(&dev->intf->dev,
    "CMD_MAP_CHANNEL_REQ failed for CAN%u\n", i);
   return err;
  }
 }

 err = kvaser_usb_hydra_map_channel(dev, KVASER_USB_HYDRA_TRANSID_SYSDBG,
        0, "SYSDBG");
 if (err) {
  dev_err(&dev->intf->dev,
   "CMD_MAP_CHANNEL_REQ failed for SYSDBG\n");
  return err;
 }

 return 0;
}
