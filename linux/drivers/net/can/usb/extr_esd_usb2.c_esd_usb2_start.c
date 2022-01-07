
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {int state; } ;
struct esd_usb2_net_priv {TYPE_4__ can; int index; struct net_device* netdev; struct esd_usb2* usb2; } ;
struct TYPE_6__ {void** mask; int option; int net; } ;
struct TYPE_5__ {int len; int cmd; } ;
struct TYPE_7__ {TYPE_2__ filter; TYPE_1__ hdr; } ;
struct esd_usb2_msg {TYPE_3__ msg; } ;
struct esd_usb2 {int dummy; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int CMD_IDADD ;
 int ENODEV ;
 int ENOMEM ;
 int ESD_ID_ENABLE ;
 int ESD_MAX_ID_SEGMENT ;
 int GFP_KERNEL ;
 void* cpu_to_le32 (int) ;
 int esd_usb2_send_msg (struct esd_usb2*,struct esd_usb2_msg*) ;
 int esd_usb2_setup_rx_urbs (struct esd_usb2*) ;
 int kfree (struct esd_usb2_msg*) ;
 struct esd_usb2_msg* kmalloc (int,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netif_device_detach (struct net_device*) ;

__attribute__((used)) static int esd_usb2_start(struct esd_usb2_net_priv *priv)
{
 struct esd_usb2 *dev = priv->usb2;
 struct net_device *netdev = priv->netdev;
 struct esd_usb2_msg *msg;
 int err, i;

 msg = kmalloc(sizeof(*msg), GFP_KERNEL);
 if (!msg) {
  err = -ENOMEM;
  goto out;
 }
 msg->msg.hdr.cmd = CMD_IDADD;
 msg->msg.hdr.len = 2 + ESD_MAX_ID_SEGMENT;
 msg->msg.filter.net = priv->index;
 msg->msg.filter.option = ESD_ID_ENABLE;
 for (i = 0; i < ESD_MAX_ID_SEGMENT; i++)
  msg->msg.filter.mask[i] = cpu_to_le32(0xffffffff);

 msg->msg.filter.mask[ESD_MAX_ID_SEGMENT] = cpu_to_le32(0x00000001);

 err = esd_usb2_send_msg(dev, msg);
 if (err)
  goto out;

 err = esd_usb2_setup_rx_urbs(dev);
 if (err)
  goto out;

 priv->can.state = CAN_STATE_ERROR_ACTIVE;

out:
 if (err == -ENODEV)
  netif_device_detach(netdev);
 if (err)
  netdev_err(netdev, "couldn't start device: %d\n", err);

 kfree(msg);
 return err;
}
