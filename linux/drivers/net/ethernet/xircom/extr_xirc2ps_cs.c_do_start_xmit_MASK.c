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
typedef  scalar_t__ u_short ;
struct sk_buff {unsigned int len; int* data; } ;
struct TYPE_2__ {unsigned int tx_bytes; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;
struct local_info {scalar_t__ mohawk; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 unsigned int ETH_ZLEN ; 
 int EnableIntr ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TransmitPacket ; 
 scalar_t__ XIRCREG0_TRS ; 
 int /*<<< orphan*/  XIRCREG0_TSO ; 
 scalar_t__ XIRCREG_CR ; 
 scalar_t__ XIRCREG_EDP ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct local_info* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct sk_buff*,...) ; 
 scalar_t__ FUNC10 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static netdev_tx_t
FUNC11(struct sk_buff *skb, struct net_device *dev)
{
    struct local_info *lp = FUNC5(dev);
    unsigned int ioaddr = dev->base_addr;
    int okay;
    unsigned freespace;
    unsigned pktlen = skb->len;

    FUNC9("do_start_xmit(skb=%p, dev=%p) len=%u\n",
	  skb, dev, pktlen);


    /* adjust the packet length to min. required
     * and hope that the buffer is large enough
     * to provide some random data.
     * fixme: For Mohawk we can change this by sending
     * a larger packetlen than we actually have; the chip will
     * pad this in his buffer with random bytes
     */
    if (pktlen < ETH_ZLEN)
    {
        if (FUNC10(skb, ETH_ZLEN))
        	return NETDEV_TX_OK;
	pktlen = ETH_ZLEN;
    }

    FUNC7(dev);
    FUNC3(0);
    FUNC2(XIRCREG0_TRS, (u_short)pktlen+2);
    freespace = FUNC0(XIRCREG0_TSO);
    okay = freespace & 0x8000;
    freespace &= 0x7fff;
    /* TRS doesn't work - (indeed it is eliminated with sil-rev 1) */
    okay = pktlen +2 < freespace;
    FUNC9("%s: avail. tx space=%u%s\n",
	  dev->name, freespace, okay ? " (okay)":" (not enough)");
    if (!okay) { /* not enough space */
	return NETDEV_TX_BUSY;  /* upper layer may decide to requeue this packet */
    }
    /* send the packet */
    FUNC2(XIRCREG_EDP, (u_short)pktlen);
    FUNC8(ioaddr+XIRCREG_EDP, skb->data, pktlen>>1);
    if (pktlen & 1)
	FUNC1(XIRCREG_EDP, skb->data[pktlen-1]);

    if (lp->mohawk)
	FUNC1(XIRCREG_CR, TransmitPacket|EnableIntr);

    FUNC4 (skb);
    dev->stats.tx_bytes += pktlen;
    FUNC6(dev);
    return NETDEV_TX_OK;
}