
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_dma; int transfer_flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int tx_dropped; } ;
struct net_device {int dummy; } ;
struct gs_tx_context {unsigned int echo_id; } ;
struct gs_host_frame {unsigned int echo_id; int data; int can_dlc; int can_id; int channel; } ;
struct gs_can {int udev; int active_tx_urbs; int tx_submitted; int channel; TYPE_1__* netdev; } ;
struct can_frame {int can_dlc; int data; int can_id; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {struct net_device_stats stats; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int GSUSB_ENDPOINT_OUT ;
 unsigned int GS_MAX_TX_URBS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 unsigned int atomic_read (int *) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_free_echo_skb (struct net_device*,unsigned int) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,unsigned int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct gs_tx_context* gs_alloc_tx_context (struct gs_can*) ;
 int gs_free_tx_context (struct gs_tx_context*) ;
 int gs_usb_xmit_callback ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct gs_can* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ unlikely (int) ;
 struct gs_host_frame* usb_alloc_coherent (int ,int,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,struct gs_host_frame*,int,int ,struct gs_tx_context*) ;
 int usb_free_coherent (int ,int,struct gs_host_frame*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static netdev_tx_t gs_can_start_xmit(struct sk_buff *skb,
         struct net_device *netdev)
{
 struct gs_can *dev = netdev_priv(netdev);
 struct net_device_stats *stats = &dev->netdev->stats;
 struct urb *urb;
 struct gs_host_frame *hf;
 struct can_frame *cf;
 int rc;
 unsigned int idx;
 struct gs_tx_context *txc;

 if (can_dropped_invalid_skb(netdev, skb))
  return NETDEV_TX_OK;


 txc = gs_alloc_tx_context(dev);
 if (!txc)
  return NETDEV_TX_BUSY;


 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  goto nomem_urb;

 hf = usb_alloc_coherent(dev->udev, sizeof(*hf), GFP_ATOMIC,
    &urb->transfer_dma);
 if (!hf) {
  netdev_err(netdev, "No memory left for USB buffer\n");
  goto nomem_hf;
 }

 idx = txc->echo_id;

 if (idx >= GS_MAX_TX_URBS) {
  netdev_err(netdev, "Invalid tx context %d\n", idx);
  goto badidx;
 }

 hf->echo_id = idx;
 hf->channel = dev->channel;

 cf = (struct can_frame *)skb->data;

 hf->can_id = cf->can_id;
 hf->can_dlc = cf->can_dlc;
 memcpy(hf->data, cf->data, cf->can_dlc);

 usb_fill_bulk_urb(urb, dev->udev,
     usb_sndbulkpipe(dev->udev, GSUSB_ENDPOINT_OUT),
     hf,
     sizeof(*hf),
     gs_usb_xmit_callback,
     txc);

 urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 usb_anchor_urb(urb, &dev->tx_submitted);

 can_put_echo_skb(skb, netdev, idx);

 atomic_inc(&dev->active_tx_urbs);

 rc = usb_submit_urb(urb, GFP_ATOMIC);
 if (unlikely(rc)) {
  atomic_dec(&dev->active_tx_urbs);

  can_free_echo_skb(netdev, idx);
  gs_free_tx_context(txc);

  usb_unanchor_urb(urb);
  usb_free_coherent(dev->udev,
      sizeof(*hf),
      hf,
      urb->transfer_dma);

  if (rc == -ENODEV) {
   netif_device_detach(netdev);
  } else {
   netdev_err(netdev, "usb_submit failed (err=%d)\n", rc);
   stats->tx_dropped++;
  }
 } else {

  if (atomic_read(&dev->active_tx_urbs) >= GS_MAX_TX_URBS)
   netif_stop_queue(netdev);
 }


 usb_free_urb(urb);

 return NETDEV_TX_OK;

 badidx:
 usb_free_coherent(dev->udev,
     sizeof(*hf),
     hf,
     urb->transfer_dma);
 nomem_hf:
 usb_free_urb(urb);

 nomem_urb:
 gs_free_tx_context(txc);
 dev_kfree_skb(skb);
 stats->tx_dropped++;
 return NETDEV_TX_OK;
}
