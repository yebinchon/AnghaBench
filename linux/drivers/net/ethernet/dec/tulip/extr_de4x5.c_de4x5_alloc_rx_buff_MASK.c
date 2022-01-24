#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct de4x5_private {scalar_t__ state; int rx_old; short rxRingSize; scalar_t__ rx_bufs; struct sk_buff** rx_skb; TYPE_1__* rx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int DE4X5_ALIGN ; 
 int IEEE802_3_SZ ; 
 scalar_t__ OPEN ; 
 short RX_BUFF_SZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (struct net_device*,int) ; 
 struct de4x5_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct net_device *dev, int index, int len)
{
    struct de4x5_private *lp = FUNC2(dev);
    struct sk_buff *p;

#if !defined(__alpha__) && !defined(__powerpc__) && !defined(CONFIG_SPARC) && !defined(DE4X5_DO_MEMCPY)
    struct sk_buff *ret;
    u_long i=0, tmp;

    p = FUNC1(dev, IEEE802_3_SZ + DE4X5_ALIGN + 2);
    if (!p) return NULL;

    tmp = FUNC6(p->data);
    i = ((tmp + DE4X5_ALIGN) & ~DE4X5_ALIGN) - tmp;
    FUNC5(p, i);
    lp->rx_ring[index].buf = FUNC0(tmp + i);

    ret = lp->rx_skb[index];
    lp->rx_skb[index] = p;

    if ((u_long) ret > 1) {
	FUNC3(ret, len);
    }

    return ret;

#else
    if (lp->state != OPEN) return (struct sk_buff *)1; /* Fake out the open */

    p = netdev_alloc_skb(dev, len + 2);
    if (!p) return NULL;

    skb_reserve(p, 2);	                               /* Align */
    if (index < lp->rx_old) {                          /* Wrapped buffer */
	short tlen = (lp->rxRingSize - lp->rx_old) * RX_BUFF_SZ;
	skb_put_data(p, lp->rx_bufs + lp->rx_old * RX_BUFF_SZ, tlen);
	skb_put_data(p, lp->rx_bufs, len - tlen);
    } else {                                           /* Linear buffer */
	skb_put_data(p, lp->rx_bufs + lp->rx_old * RX_BUFF_SZ, len);
    }

    return p;
#endif
}