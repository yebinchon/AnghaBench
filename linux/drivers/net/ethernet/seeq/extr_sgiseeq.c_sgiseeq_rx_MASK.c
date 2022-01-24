#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned char* data; int /*<<< orphan*/  protocol; } ;
struct TYPE_6__ {int cntinfo; int /*<<< orphan*/  pbuf; } ;
struct sgiseeq_rx_desc {TYPE_3__ rdma; struct sk_buff* skb; } ;
struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {size_t rx_new; struct sgiseeq_rx_desc* rx_desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; int /*<<< orphan*/  dev_addr; } ;
struct hpc3_ethregs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int HPCDMA_BCNT ; 
 int HPCDMA_EOR ; 
 int HPCDMA_OWN ; 
 size_t FUNC0 (size_t) ; 
 int PKT_BUF_SZ ; 
 size_t FUNC1 (size_t) ; 
 int RCNTINFO_INIT ; 
 unsigned char SEEQ_RSTAT_FIG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sgiseeq_rx_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sgiseeq_rx_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct net_device*,int) ; 
 struct sk_buff* FUNC9 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,unsigned char) ; 
 int rx_copybreak ; 
 int /*<<< orphan*/  FUNC12 (struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC16(struct net_device *dev, struct sgiseeq_private *sp,
			      struct hpc3_ethregs *hregs,
			      struct sgiseeq_regs *sregs)
{
	struct sgiseeq_rx_desc *rd;
	struct sk_buff *skb = NULL;
	struct sk_buff *newskb;
	unsigned char pkt_status;
	int len = 0;
	unsigned int orig_end = FUNC1(sp->rx_new);

	/* Service every received packet. */
	rd = &sp->rx_desc[sp->rx_new];
	FUNC3(dev, rd);
	while (!(rd->rdma.cntinfo & HPCDMA_OWN)) {
		len = PKT_BUF_SZ - (rd->rdma.cntinfo & HPCDMA_BCNT) - 3;
		FUNC5(dev->dev.parent, rd->rdma.pbuf,
				 PKT_BUF_SZ, DMA_FROM_DEVICE);
		pkt_status = rd->skb->data[len];
		if (pkt_status & SEEQ_RSTAT_FIG) {
			/* Packet is OK. */
			/* We don't want to receive our own packets */
			if (!FUNC7(rd->skb->data + 6, dev->dev_addr)) {
				if (len > rx_copybreak) {
					skb = rd->skb;
					newskb = FUNC8(dev, PKT_BUF_SZ);
					if (!newskb) {
						newskb = skb;
						skb = NULL;
						goto memory_squeeze;
					}
					FUNC15(newskb, 2);
				} else {
					skb = FUNC9(dev, len);
					if (skb)
						FUNC13(skb, rd->skb->data, len);

					newskb = rd->skb;
				}
memory_squeeze:
				if (skb) {
					FUNC14(skb, len);
					skb->protocol = FUNC6(skb, dev);
					FUNC10(skb);
					dev->stats.rx_packets++;
					dev->stats.rx_bytes += len;
				} else {
					dev->stats.rx_dropped++;
				}
			} else {
				/* Silently drop my own packets */
				newskb = rd->skb;
			}
		} else {
			FUNC11(dev, pkt_status);
			newskb = rd->skb;
		}
		rd->skb = newskb;
		rd->rdma.pbuf = FUNC2(dev->dev.parent,
					       newskb->data - 2,
					       PKT_BUF_SZ, DMA_FROM_DEVICE);

		/* Return the entry to the ring pool. */
		rd->rdma.cntinfo = RCNTINFO_INIT;
		sp->rx_new = FUNC0(sp->rx_new);
		FUNC4(dev, rd);
		rd = &sp->rx_desc[sp->rx_new];
		FUNC3(dev, rd);
	}
	FUNC3(dev, &sp->rx_desc[orig_end]);
	sp->rx_desc[orig_end].rdma.cntinfo &= ~(HPCDMA_EOR);
	FUNC4(dev, &sp->rx_desc[orig_end]);
	FUNC3(dev, &sp->rx_desc[FUNC1(sp->rx_new)]);
	sp->rx_desc[FUNC1(sp->rx_new)].rdma.cntinfo |= HPCDMA_EOR;
	FUNC4(dev, &sp->rx_desc[FUNC1(sp->rx_new)]);
	FUNC12(sp, hregs, sregs);
}