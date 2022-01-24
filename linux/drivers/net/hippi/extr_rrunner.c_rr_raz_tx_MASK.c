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
struct TYPE_2__ {int /*<<< orphan*/  addrlo; } ;
struct tx_desc {TYPE_1__ addr; scalar_t__ size; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rr_private {struct sk_buff** tx_skbuff; int /*<<< orphan*/  pci_dev; struct tx_desc* tx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TX_RING_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct rr_private *rrpriv,
			     struct net_device *dev)
{
	int i;

	for (i = 0; i < TX_RING_ENTRIES; i++) {
		struct sk_buff *skb = rrpriv->tx_skbuff[i];

		if (skb) {
			struct tx_desc *desc = &(rrpriv->tx_ring[i]);

	        	FUNC1(rrpriv->pci_dev, desc->addr.addrlo,
				skb->len, PCI_DMA_TODEVICE);
			desc->size = 0;
			FUNC2(&desc->addr, 0);
			FUNC0(skb);
			rrpriv->tx_skbuff[i] = NULL;
		}
	}
}