
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct de4x5_private {scalar_t__ state; int rx_old; short rxRingSize; scalar_t__ rx_bufs; struct sk_buff** rx_skb; TYPE_1__* rx_ring; } ;
struct TYPE_2__ {int buf; } ;


 int DE4X5_ALIGN ;
 int IEEE802_3_SZ ;
 scalar_t__ OPEN ;
 short RX_BUFF_SZ ;
 int cpu_to_le32 (int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,scalar_t__,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int virt_to_bus (int ) ;

__attribute__((used)) static struct sk_buff *
de4x5_alloc_rx_buff(struct net_device *dev, int index, int len)
{
    struct de4x5_private *lp = netdev_priv(dev);
    struct sk_buff *p;


    struct sk_buff *ret;
    u_long i=0, tmp;

    p = netdev_alloc_skb(dev, IEEE802_3_SZ + DE4X5_ALIGN + 2);
    if (!p) return ((void*)0);

    tmp = virt_to_bus(p->data);
    i = ((tmp + DE4X5_ALIGN) & ~DE4X5_ALIGN) - tmp;
    skb_reserve(p, i);
    lp->rx_ring[index].buf = cpu_to_le32(tmp + i);

    ret = lp->rx_skb[index];
    lp->rx_skb[index] = p;

    if ((u_long) ret > 1) {
 skb_put(ret, len);
    }

    return ret;
}
