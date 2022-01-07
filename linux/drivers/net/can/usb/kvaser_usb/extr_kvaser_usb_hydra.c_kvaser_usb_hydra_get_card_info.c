
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvaser_usb {int nchannels; } ;
struct TYPE_2__ {int nchannels; } ;
struct kvaser_cmd {TYPE_1__ card_info; } ;


 int CMD_GET_CARD_INFO_REQ ;
 int CMD_GET_CARD_INFO_RESP ;
 int EINVAL ;
 int KVASER_USB_MAX_NET_DEVICES ;
 int kvaser_usb_hydra_send_simple_cmd (struct kvaser_usb*,int ,int) ;
 int kvaser_usb_hydra_wait_cmd (struct kvaser_usb*,int ,struct kvaser_cmd*) ;
 int memset (struct kvaser_cmd*,int ,int) ;

__attribute__((used)) static int kvaser_usb_hydra_get_card_info(struct kvaser_usb *dev)
{
 struct kvaser_cmd cmd;
 int err;

 err = kvaser_usb_hydra_send_simple_cmd(dev, CMD_GET_CARD_INFO_REQ, -1);
 if (err)
  return err;

 memset(&cmd, 0, sizeof(struct kvaser_cmd));
 err = kvaser_usb_hydra_wait_cmd(dev, CMD_GET_CARD_INFO_RESP, &cmd);
 if (err)
  return err;

 dev->nchannels = cmd.card_info.nchannels;
 if (dev->nchannels > KVASER_USB_MAX_NET_DEVICES)
  return -EINVAL;

 return 0;
}
