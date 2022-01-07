
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_10__ {int state; } ;
struct esd_usb2_net_priv {TYPE_5__ can; int usb2; int index; } ;
struct TYPE_8__ {int baud; scalar_t__ rsvd; int net; } ;
struct TYPE_7__ {int len; int cmd; } ;
struct TYPE_6__ {scalar_t__* mask; int option; int net; } ;
struct TYPE_9__ {TYPE_3__ setbaud; TYPE_2__ hdr; TYPE_1__ filter; } ;
struct esd_usb2_msg {TYPE_4__ msg; } ;


 int CAN_STATE_STOPPED ;
 int CMD_IDADD ;
 int CMD_SETBAUD ;
 int ENOMEM ;
 int ESD_ID_ENABLE ;
 int ESD_MAX_ID_SEGMENT ;
 int ESD_USB2_NO_BAUDRATE ;
 int GFP_KERNEL ;
 int close_candev (struct net_device*) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ esd_usb2_send_msg (int ,struct esd_usb2_msg*) ;
 int kfree (struct esd_usb2_msg*) ;
 struct esd_usb2_msg* kmalloc (int,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct esd_usb2_net_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int esd_usb2_close(struct net_device *netdev)
{
 struct esd_usb2_net_priv *priv = netdev_priv(netdev);
 struct esd_usb2_msg *msg;
 int i;

 msg = kmalloc(sizeof(*msg), GFP_KERNEL);
 if (!msg)
  return -ENOMEM;


 msg->msg.hdr.cmd = CMD_IDADD;
 msg->msg.hdr.len = 2 + ESD_MAX_ID_SEGMENT;
 msg->msg.filter.net = priv->index;
 msg->msg.filter.option = ESD_ID_ENABLE;
 for (i = 0; i <= ESD_MAX_ID_SEGMENT; i++)
  msg->msg.filter.mask[i] = 0;
 if (esd_usb2_send_msg(priv->usb2, msg) < 0)
  netdev_err(netdev, "sending idadd message failed\n");


 msg->msg.hdr.len = 2;
 msg->msg.hdr.cmd = CMD_SETBAUD;
 msg->msg.setbaud.net = priv->index;
 msg->msg.setbaud.rsvd = 0;
 msg->msg.setbaud.baud = cpu_to_le32(ESD_USB2_NO_BAUDRATE);
 if (esd_usb2_send_msg(priv->usb2, msg) < 0)
  netdev_err(netdev, "sending setbaud message failed\n");

 priv->can.state = CAN_STATE_STOPPED;

 netif_stop_queue(netdev);

 close_candev(netdev);

 kfree(msg);

 return 0;
}
