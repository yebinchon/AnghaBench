
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {int needs_remote_wakeup; TYPE_2__* cur_altsetting; int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; int phydev; int max_mtu; int * ethtool_ops; int watchdog_timeo; int * netdev_ops; } ;
struct TYPE_5__ {int access_lock; } ;
struct lan78xx_net {int delta; scalar_t__ hard_mtu; int urb_intr; int pipe_out; struct usb_device* udev; void* maxpacket; int pipe_intr; TYPE_4__* ep_intr; int pipe_in; TYPE_4__* ep_blkout; TYPE_4__* ep_blkin; TYPE_1__ stats; int stat_monitor; int deferred; int wq; int bh; int phy_mutex; int txq_pend; int rxq_pause; int done; int txq; int rxq; int msg_enable; struct net_device* net; struct usb_interface* intf; } ;
struct TYPE_7__ {int bEndpointAddress; unsigned int bInterval; } ;
struct TYPE_8__ {TYPE_3__ desc; } ;
struct TYPE_6__ {TYPE_4__* endpoint; } ;


 int BULK_IN_PIPE ;
 int BULK_OUT_PIPE ;
 int DEFAULT_AUTOSUSPEND_DELAY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MAX_SINGLE_PACKET_SIZE ;
 int NETIF_MSG_DRV ;
 int NETIF_MSG_LINK ;
 int NETIF_MSG_PROBE ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TX_TIMEOUT_JIFFIES ;
 int USB_ENDPOINT_NUMBER_MASK ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int *,char*) ;
 int device_set_wakeup_enable (int *,int) ;
 int free_netdev (struct net_device*) ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int intr_complete ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int lan78xx_bh ;
 int lan78xx_bind (struct lan78xx_net*,struct usb_interface*) ;
 int lan78xx_delayedwork ;
 int lan78xx_ethtool_ops ;
 int lan78xx_netdev_ops ;
 int lan78xx_phy_init (struct lan78xx_net*) ;
 int lan78xx_stat_monitor ;
 int lan78xx_unbind (struct lan78xx_net*,struct usb_interface*) ;
 int msg_level ;
 int mutex_init (int *) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int netif_err (struct lan78xx_net*,int ,struct net_device*,char*) ;
 int netif_msg_init (int ,int) ;
 int phy_disconnect (int ) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int probe ;
 int register_netdev (struct net_device*) ;
 int skb_queue_head_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int ,struct usb_device*,int ,int *,unsigned int,int ,struct lan78xx_net*,unsigned int) ;
 int usb_free_urb (int ) ;
 struct usb_device* usb_get_dev (struct usb_device*) ;
 void* usb_maxpacket (struct usb_device*,int ,int) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usb_rcvintpipe (struct usb_device*,int) ;
 int usb_set_intfdata (struct usb_interface*,struct lan78xx_net*) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int lan78xx_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct lan78xx_net *dev;
 struct net_device *netdev;
 struct usb_device *udev;
 int ret;
 unsigned maxp;
 unsigned period;
 u8 *buf = ((void*)0);

 udev = interface_to_usbdev(intf);
 udev = usb_get_dev(udev);

 netdev = alloc_etherdev(sizeof(struct lan78xx_net));
 if (!netdev) {
  dev_err(&intf->dev, "Error: OOM\n");
  ret = -ENOMEM;
  goto out1;
 }


 SET_NETDEV_DEV(netdev, &intf->dev);

 dev = netdev_priv(netdev);
 dev->udev = udev;
 dev->intf = intf;
 dev->net = netdev;
 dev->msg_enable = netif_msg_init(msg_level, NETIF_MSG_DRV
     | NETIF_MSG_PROBE | NETIF_MSG_LINK);

 skb_queue_head_init(&dev->rxq);
 skb_queue_head_init(&dev->txq);
 skb_queue_head_init(&dev->done);
 skb_queue_head_init(&dev->rxq_pause);
 skb_queue_head_init(&dev->txq_pend);
 mutex_init(&dev->phy_mutex);

 tasklet_init(&dev->bh, lan78xx_bh, (unsigned long)dev);
 INIT_DELAYED_WORK(&dev->wq, lan78xx_delayedwork);
 init_usb_anchor(&dev->deferred);

 netdev->netdev_ops = &lan78xx_netdev_ops;
 netdev->watchdog_timeo = TX_TIMEOUT_JIFFIES;
 netdev->ethtool_ops = &lan78xx_ethtool_ops;

 dev->delta = 1;
 timer_setup(&dev->stat_monitor, lan78xx_stat_monitor, 0);

 mutex_init(&dev->stats.access_lock);

 ret = lan78xx_bind(dev, intf);
 if (ret < 0)
  goto out2;

 if (netdev->mtu > (dev->hard_mtu - netdev->hard_header_len))
  netdev->mtu = dev->hard_mtu - netdev->hard_header_len;


 netdev->max_mtu = MAX_SINGLE_PACKET_SIZE;

 dev->ep_blkin = (intf->cur_altsetting)->endpoint + 0;
 dev->ep_blkout = (intf->cur_altsetting)->endpoint + 1;
 dev->ep_intr = (intf->cur_altsetting)->endpoint + 2;

 dev->pipe_in = usb_rcvbulkpipe(udev, BULK_IN_PIPE);
 dev->pipe_out = usb_sndbulkpipe(udev, BULK_OUT_PIPE);

 dev->pipe_intr = usb_rcvintpipe(dev->udev,
     dev->ep_intr->desc.bEndpointAddress &
     USB_ENDPOINT_NUMBER_MASK);
 period = dev->ep_intr->desc.bInterval;

 maxp = usb_maxpacket(dev->udev, dev->pipe_intr, 0);
 buf = kmalloc(maxp, GFP_KERNEL);
 if (buf) {
  dev->urb_intr = usb_alloc_urb(0, GFP_KERNEL);
  if (!dev->urb_intr) {
   ret = -ENOMEM;
   kfree(buf);
   goto out3;
  } else {
   usb_fill_int_urb(dev->urb_intr, dev->udev,
      dev->pipe_intr, buf, maxp,
      intr_complete, dev, period);
  }
 }

 dev->maxpacket = usb_maxpacket(dev->udev, dev->pipe_out, 1);


 intf->needs_remote_wakeup = 1;

 ret = lan78xx_phy_init(dev);
 if (ret < 0)
  goto out4;

 ret = register_netdev(netdev);
 if (ret != 0) {
  netif_err(dev, probe, netdev, "couldn't register the device\n");
  goto out5;
 }

 usb_set_intfdata(intf, dev);

 ret = device_set_wakeup_enable(&udev->dev, 1);




 pm_runtime_set_autosuspend_delay(&udev->dev,
      DEFAULT_AUTOSUSPEND_DELAY);

 return 0;

out5:
 phy_disconnect(netdev->phydev);
out4:
 usb_free_urb(dev->urb_intr);
out3:
 lan78xx_unbind(dev, intf);
out2:
 free_netdev(netdev);
out1:
 usb_put_dev(udev);

 return ret;
}
