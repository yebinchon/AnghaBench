#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ protocol; int len; int* data; } ;
struct TYPE_8__ {scalar_t__ fulldup; int /*<<< orphan*/  waittime; } ;
struct TYPE_7__ {int bufsize; scalar_t__ tx_state; int /*<<< orphan*/  txframes; } ;
struct TYPE_5__ {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct scc_channel {int /*<<< orphan*/  lock; TYPE_4__ kiss; TYPE_3__ stat; int /*<<< orphan*/  tx_queue; TYPE_2__* dev; TYPE_1__ dev_stat; } ;
struct net_device {scalar_t__ ml_priv; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {scalar_t__ tx_queue_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ KISS_DUPLEX_HALF ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ TXS_BUSY ; 
 scalar_t__ TXS_IDLE ; 
 scalar_t__ TXS_IDLE2 ; 
 int /*<<< orphan*/  FUNC0 (struct scc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct scc_channel*,char,int) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  t_dwait ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;
	unsigned long flags;
	char kisscmd;

	if (skb->protocol == FUNC3(ETH_P_IP))
		return FUNC1(skb);

	if (skb->len > scc->stat.bufsize || skb->len < 2) {
		scc->dev_stat.tx_dropped++;	/* bogus frame */
		FUNC2(skb);
		return NETDEV_TX_OK;
	}
	
	scc->dev_stat.tx_packets++;
	scc->dev_stat.tx_bytes += skb->len;
	scc->stat.txframes++;
	
	kisscmd = *skb->data & 0x1f;
	FUNC7(skb, 1);

	if (kisscmd) {
		FUNC5(scc, kisscmd, *skb->data);
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	FUNC10(&scc->lock, flags);
		
	if (FUNC8(&scc->tx_queue) > scc->dev->tx_queue_len) {
		struct sk_buff *skb_del;
		skb_del = FUNC6(&scc->tx_queue);
		FUNC2(skb_del);
	}
	FUNC9(&scc->tx_queue, skb);
	FUNC4(dev);
	

	/*
	 * Start transmission if the trx state is idle or
	 * t_idle hasn't expired yet. Use dwait/persistence/slottime
	 * algorithm for normal halfduplex operation.
	 */

	if(scc->stat.tx_state == TXS_IDLE || scc->stat.tx_state == TXS_IDLE2) {
		scc->stat.tx_state = TXS_BUSY;
		if (scc->kiss.fulldup == KISS_DUPLEX_HALF)
			FUNC0(scc, t_dwait, scc->kiss.waittime);
		else
			FUNC0(scc, t_dwait, 0);
	}
	FUNC11(&scc->lock, flags);
	return NETDEV_TX_OK;
}