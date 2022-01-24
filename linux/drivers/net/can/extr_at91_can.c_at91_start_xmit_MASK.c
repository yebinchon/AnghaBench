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
typedef  int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_id; int can_dlc; scalar_t__ data; } ;
struct at91_priv {int tx_next; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_IER ; 
 int /*<<< orphan*/  AT91_MB_MODE_DISABLED ; 
 int /*<<< orphan*/  AT91_MB_MODE_TX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int AT91_MCR_MRTR ; 
 int AT91_MCR_MTCR ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int AT91_MSR_MRDY ; 
 int CAN_RTR_FLAG ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct at91_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct at91_priv*) ; 
 int FUNC11 (struct at91_priv*) ; 
 unsigned int FUNC12 (struct at91_priv*) ; 
 unsigned int FUNC13 (struct at91_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*) ; 
 struct at91_priv* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct at91_priv*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct at91_priv*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC20(struct sk_buff *skb, struct net_device *dev)
{
	struct at91_priv *priv = FUNC15(dev);
	struct net_device_stats *stats = &dev->stats;
	struct can_frame *cf = (struct can_frame *)skb->data;
	unsigned int mb, prio;
	u32 reg_mid, reg_mcr;

	if (FUNC8(dev, skb))
		return NETDEV_TX_OK;

	mb = FUNC12(priv);
	prio = FUNC13(priv);

	if (FUNC19(!(FUNC6(priv, FUNC4(mb)) & AT91_MSR_MRDY))) {
		FUNC16(dev);

		FUNC14(dev, "BUG! TX buffer full when queue awake!\n");
		return NETDEV_TX_BUSY;
	}
	reg_mid = FUNC5(cf->can_id);
	reg_mcr = ((cf->can_id & CAN_RTR_FLAG) ? AT91_MCR_MRTR : 0) |
		(cf->can_dlc << 16) | AT91_MCR_MTCR;

	/* disable MB while writing ID (see datasheet) */
	FUNC17(priv, mb, AT91_MB_MODE_DISABLED);
	FUNC7(priv, FUNC3(mb), reg_mid);
	FUNC18(priv, mb, AT91_MB_MODE_TX, prio);

	FUNC7(priv, FUNC2(mb), *(u32 *)(cf->data + 0));
	FUNC7(priv, FUNC1(mb), *(u32 *)(cf->data + 4));

	/* This triggers transmission */
	FUNC7(priv, FUNC0(mb), reg_mcr);

	stats->tx_bytes += cf->can_dlc;

	/* _NOTE_: subtract AT91_MB_TX_FIRST offset from mb! */
	FUNC9(skb, dev, mb - FUNC10(priv));

	/*
	 * we have to stop the queue and deliver all messages in case
	 * of a prio+mb counter wrap around. This is the case if
	 * tx_next buffer prio and mailbox equals 0.
	 *
	 * also stop the queue if next buffer is still in use
	 * (== not ready)
	 */
	priv->tx_next++;
	if (!(FUNC6(priv, FUNC4(FUNC12(priv))) &
	      AT91_MSR_MRDY) ||
	    (priv->tx_next & FUNC11(priv)) == 0)
		FUNC16(dev);

	/* Enable interrupt for this mailbox */
	FUNC7(priv, AT91_IER, 1 << mb);

	return NETDEV_TX_OK;
}