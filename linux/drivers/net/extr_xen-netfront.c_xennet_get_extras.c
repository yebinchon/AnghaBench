
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xen_netif_extra_info {int flags; int type; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ rsp_cons; } ;
struct netfront_queue {TYPE_3__ rx; TYPE_2__* info; } ;
struct device {int dummy; } ;
typedef int grant_ref_t ;
struct TYPE_5__ {TYPE_1__* netdev; } ;
struct TYPE_4__ {struct device dev; } ;
typedef scalar_t__ RING_IDX ;


 int EBADR ;
 int EINVAL ;
 scalar_t__ RING_GET_RESPONSE (TYPE_3__*,scalar_t__) ;
 int XEN_NETIF_EXTRA_FLAG_MORE ;
 int XEN_NETIF_EXTRA_TYPE_MAX ;
 int dev_warn (struct device*,char*,...) ;
 int memcpy (struct xen_netif_extra_info*,struct xen_netif_extra_info*,int) ;
 scalar_t__ net_ratelimit () ;
 scalar_t__ unlikely (int) ;
 int xennet_get_rx_ref (struct netfront_queue*,scalar_t__) ;
 struct sk_buff* xennet_get_rx_skb (struct netfront_queue*,scalar_t__) ;
 int xennet_move_rx_slot (struct netfront_queue*,struct sk_buff*,int ) ;

__attribute__((used)) static int xennet_get_extras(struct netfront_queue *queue,
        struct xen_netif_extra_info *extras,
        RING_IDX rp)

{
 struct xen_netif_extra_info *extra;
 struct device *dev = &queue->info->netdev->dev;
 RING_IDX cons = queue->rx.rsp_cons;
 int err = 0;

 do {
  struct sk_buff *skb;
  grant_ref_t ref;

  if (unlikely(cons + 1 == rp)) {
   if (net_ratelimit())
    dev_warn(dev, "Missing extra info\n");
   err = -EBADR;
   break;
  }

  extra = (struct xen_netif_extra_info *)
   RING_GET_RESPONSE(&queue->rx, ++cons);

  if (unlikely(!extra->type ||
        extra->type >= XEN_NETIF_EXTRA_TYPE_MAX)) {
   if (net_ratelimit())
    dev_warn(dev, "Invalid extra type: %d\n",
     extra->type);
   err = -EINVAL;
  } else {
   memcpy(&extras[extra->type - 1], extra,
          sizeof(*extra));
  }

  skb = xennet_get_rx_skb(queue, cons);
  ref = xennet_get_rx_ref(queue, cons);
  xennet_move_rx_slot(queue, skb, ref);
 } while (extra->flags & XEN_NETIF_EXTRA_FLAG_MORE);

 queue->rx.rsp_cons = cons;
 return err;
}
