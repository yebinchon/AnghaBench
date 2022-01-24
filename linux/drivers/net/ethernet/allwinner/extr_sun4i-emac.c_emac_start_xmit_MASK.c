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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct emac_board_info {int tx_fifo_stat; int /*<<< orphan*/  lock; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ EMAC_TX_CTL0_REG ; 
 scalar_t__ EMAC_TX_CTL1_REG ; 
 scalar_t__ EMAC_TX_INS_REG ; 
 scalar_t__ EMAC_TX_IO_DATA_REG ; 
 scalar_t__ EMAC_TX_PL0_REG ; 
 scalar_t__ EMAC_TX_PL1_REG ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct emac_board_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct emac_board_info *db = FUNC2(dev);
	unsigned long channel;
	unsigned long flags;

	channel = db->tx_fifo_stat & 3;
	if (channel == 3)
		return 1;

	channel = (channel == 1 ? 1 : 0);

	FUNC6(&db->lock, flags);

	FUNC8(channel, db->membase + EMAC_TX_INS_REG);

	FUNC1(db->membase + EMAC_TX_IO_DATA_REG,
			skb->data, skb->len);
	dev->stats.tx_bytes += skb->len;

	db->tx_fifo_stat |= 1 << channel;
	/* TX control: First packet immediately send, second packet queue */
	if (channel == 0) {
		/* set TX len */
		FUNC8(skb->len, db->membase + EMAC_TX_PL0_REG);
		/* start translate from fifo to phy */
		FUNC8(FUNC5(db->membase + EMAC_TX_CTL0_REG) | 1,
		       db->membase + EMAC_TX_CTL0_REG);

		/* save the time stamp */
		FUNC4(dev);
	} else if (channel == 1) {
		/* set TX len */
		FUNC8(skb->len, db->membase + EMAC_TX_PL1_REG);
		/* start translate from fifo to phy */
		FUNC8(FUNC5(db->membase + EMAC_TX_CTL1_REG) | 1,
		       db->membase + EMAC_TX_CTL1_REG);

		/* save the time stamp */
		FUNC4(dev);
	}

	if ((db->tx_fifo_stat & 3) == 3) {
		/* Second packet */
		FUNC3(dev);
	}

	FUNC7(&db->lock, flags);

	/* free this SKB */
	FUNC0(skb);

	return NETDEV_TX_OK;
}