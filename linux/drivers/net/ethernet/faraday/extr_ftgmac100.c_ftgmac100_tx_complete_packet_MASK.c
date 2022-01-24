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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftgmac100_txdes {int /*<<< orphan*/  txdes0; } ;
struct ftgmac100 {unsigned int tx_clean_pointer; int txdes0_edotr_mask; struct sk_buff** tx_skbs; struct ftgmac100_txdes* txdes; struct net_device* netdev; } ;

/* Variables and functions */
 int FTGMAC100_TXDES0_TXDMA_OWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ftgmac100*,unsigned int,struct sk_buff*,struct ftgmac100_txdes*,int) ; 
 unsigned int FUNC2 (struct ftgmac100*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ftgmac100 *priv)
{
	struct net_device *netdev = priv->netdev;
	struct ftgmac100_txdes *txdes;
	struct sk_buff *skb;
	unsigned int pointer;
	u32 ctl_stat;

	pointer = priv->tx_clean_pointer;
	txdes = &priv->txdes[pointer];

	ctl_stat = FUNC3(txdes->txdes0);
	if (ctl_stat & FTGMAC100_TXDES0_TXDMA_OWN)
		return false;

	skb = priv->tx_skbs[pointer];
	netdev->stats.tx_packets++;
	netdev->stats.tx_bytes += skb->len;
	FUNC1(priv, pointer, skb, txdes, ctl_stat);
	txdes->txdes0 = FUNC0(ctl_stat & priv->txdes0_edotr_mask);

	priv->tx_clean_pointer = FUNC2(priv, pointer);

	return true;
}