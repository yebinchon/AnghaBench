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
typedef  size_t u32 ;
struct txrx_desc_t {size_t control; } ;
struct sk_buff {size_t len; int /*<<< orphan*/  data; } ;
struct netdata_local {int num_used_tx_buffs; size_t* tx_stat_v; size_t* skblen; int /*<<< orphan*/  lock; int /*<<< orphan*/  net_base; scalar_t__ tx_buff_v; struct txrx_desc_t* tx_desc_v; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t ENET_MAXF_SIZE ; 
 int ENET_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 size_t TXDESC_CONTROL_INT ; 
 size_t TXDESC_CONTROL_LAST ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 struct netdata_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *ndev)
{
	struct netdata_local *pldat = FUNC4(ndev);
	u32 len, txidx;
	u32 *ptxstat;
	struct txrx_desc_t *ptxrxdesc;

	len = skb->len;

	FUNC7(&pldat->lock);

	if (pldat->num_used_tx_buffs >= (ENET_TX_DESC - 1)) {
		/* This function should never be called when there are no
		   buffers */
		FUNC5(ndev);
		FUNC8(&pldat->lock);
		FUNC1(1, "BUG! TX request when no free TX buffers!\n");
		return NETDEV_TX_BUSY;
	}

	/* Get the next TX descriptor index */
	txidx = FUNC6(FUNC0(pldat->net_base));

	/* Setup control for the transfer */
	ptxstat = &pldat->tx_stat_v[txidx];
	*ptxstat = 0;
	ptxrxdesc = &pldat->tx_desc_v[txidx];
	ptxrxdesc->control =
		(len - 1) | TXDESC_CONTROL_LAST | TXDESC_CONTROL_INT;

	/* Copy data to the DMA buffer */
	FUNC3(pldat->tx_buff_v + txidx * ENET_MAXF_SIZE, skb->data, len);

	/* Save the buffer and increment the buffer counter */
	pldat->skblen[txidx] = len;
	pldat->num_used_tx_buffs++;

	/* Start transmit */
	txidx++;
	if (txidx >= ENET_TX_DESC)
		txidx = 0;
	FUNC9(txidx, FUNC0(pldat->net_base));

	/* Stop queue if no more TX buffers */
	if (pldat->num_used_tx_buffs >= (ENET_TX_DESC - 1))
		FUNC5(ndev);

	FUNC8(&pldat->lock);

	FUNC2(skb);
	return NETDEV_TX_OK;
}