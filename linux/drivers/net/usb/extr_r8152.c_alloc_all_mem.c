
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; } ;
struct TYPE_6__ {scalar_t__ bInterval; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct urb {int dummy; } ;
struct r8152 {int intr_interval; int intr_buff; int udev; void* intr_urb; int tx_free; TYPE_2__* tx_info; int rx_count; int rx_queue; int tx_queue; int rx_done; int rx_info; int tx_lock; int rx_lock; struct usb_interface* intf; struct net_device* netdev; } ;
struct TYPE_4__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int list; int * head; int * buffer; struct urb* urb; struct r8152* context; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INTBUFSIZE ;
 int RTL8152_MAX_RX ;
 int RTL8152_MAX_TX ;
 scalar_t__ TX_ALIGN ;
 scalar_t__ agg_buf_sz ;
 int alloc_rx_agg (struct r8152*,int ) ;
 int atomic_set (int *,int ) ;
 int dev_to_node (scalar_t__) ;
 int free_all_mem (struct r8152*) ;
 int intr_callback ;
 int kfree (int *) ;
 int kmalloc (int ,int ) ;
 int * kmalloc_node (scalar_t__,int ,int) ;
 int list_add_tail (int *,int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int * tx_agg_align (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (void*,int ,int ,int ,int ,int ,struct r8152*,int) ;
 int usb_rcvintpipe (int ,int) ;

__attribute__((used)) static int alloc_all_mem(struct r8152 *tp)
{
 struct net_device *netdev = tp->netdev;
 struct usb_interface *intf = tp->intf;
 struct usb_host_interface *alt = intf->cur_altsetting;
 struct usb_host_endpoint *ep_intr = alt->endpoint + 2;
 int node, i;

 node = netdev->dev.parent ? dev_to_node(netdev->dev.parent) : -1;

 spin_lock_init(&tp->rx_lock);
 spin_lock_init(&tp->tx_lock);
 INIT_LIST_HEAD(&tp->rx_info);
 INIT_LIST_HEAD(&tp->tx_free);
 INIT_LIST_HEAD(&tp->rx_done);
 skb_queue_head_init(&tp->tx_queue);
 skb_queue_head_init(&tp->rx_queue);
 atomic_set(&tp->rx_count, 0);

 for (i = 0; i < RTL8152_MAX_RX; i++) {
  if (!alloc_rx_agg(tp, GFP_KERNEL))
   goto err1;
 }

 for (i = 0; i < RTL8152_MAX_TX; i++) {
  struct urb *urb;
  u8 *buf;

  buf = kmalloc_node(agg_buf_sz, GFP_KERNEL, node);
  if (!buf)
   goto err1;

  if (buf != tx_agg_align(buf)) {
   kfree(buf);
   buf = kmalloc_node(agg_buf_sz + TX_ALIGN, GFP_KERNEL,
        node);
   if (!buf)
    goto err1;
  }

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   kfree(buf);
   goto err1;
  }

  INIT_LIST_HEAD(&tp->tx_info[i].list);
  tp->tx_info[i].context = tp;
  tp->tx_info[i].urb = urb;
  tp->tx_info[i].buffer = buf;
  tp->tx_info[i].head = tx_agg_align(buf);

  list_add_tail(&tp->tx_info[i].list, &tp->tx_free);
 }

 tp->intr_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!tp->intr_urb)
  goto err1;

 tp->intr_buff = kmalloc(INTBUFSIZE, GFP_KERNEL);
 if (!tp->intr_buff)
  goto err1;

 tp->intr_interval = (int)ep_intr->desc.bInterval;
 usb_fill_int_urb(tp->intr_urb, tp->udev, usb_rcvintpipe(tp->udev, 3),
    tp->intr_buff, INTBUFSIZE, intr_callback,
    tp, tp->intr_interval);

 return 0;

err1:
 free_all_mem(tp);
 return -ENOMEM;
}
