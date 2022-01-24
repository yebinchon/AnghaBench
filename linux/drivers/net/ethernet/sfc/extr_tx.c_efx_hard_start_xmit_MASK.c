#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ ip_summed; } ;
struct net_device {int dummy; } ;
struct efx_tx_queue {int dummy; } ;
struct efx_nic {unsigned int n_tx_channels; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 unsigned int EFX_TXQ_TYPE_HIGHPRI ; 
 unsigned int EFX_TXQ_TYPE_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_tx_queue*,struct sk_buff*) ; 
 struct efx_tx_queue* FUNC2 (struct efx_nic*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct efx_nic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 unsigned int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC10(struct sk_buff *skb,
				struct net_device *net_dev)
{
	struct efx_nic *efx = FUNC6(net_dev);
	struct efx_tx_queue *tx_queue;
	unsigned index, type;

	FUNC0(!FUNC7(net_dev));

	/* PTP "event" packet */
	if (FUNC9(FUNC5(skb)) &&
	    FUNC9(FUNC3(efx, skb))) {
		return FUNC4(efx, skb);
	}

	index = FUNC8(skb);
	type = skb->ip_summed == CHECKSUM_PARTIAL ? EFX_TXQ_TYPE_OFFLOAD : 0;
	if (index >= efx->n_tx_channels) {
		index -= efx->n_tx_channels;
		type |= EFX_TXQ_TYPE_HIGHPRI;
	}
	tx_queue = FUNC2(efx, index, type);

	return FUNC1(tx_queue, skb);
}