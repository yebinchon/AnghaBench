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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ctrlmode; scalar_t__ state; } ;
struct rcar_canfd_channel {int channel; size_t tx_head; size_t tx_tail; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  base; int /*<<< orphan*/ * tx_len; TYPE_1__ can; } ;
struct net_device {int dummy; } ;
struct canfd_frame {int can_id; int flags; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int CANFD_BRS ; 
 int CAN_CTRLMODE_FD ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 scalar_t__ CAN_STATE_ERROR_PASSIVE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int RCANFD_CFFDCSTS_CFBRS ; 
 int RCANFD_CFFDCSTS_CFESI ; 
 int RCANFD_CFFDCSTS_CFFDF ; 
 int /*<<< orphan*/  RCANFD_CFFIFO_IDX ; 
 int RCANFD_CFID_CFIDE ; 
 int RCANFD_CFID_CFRTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 size_t RCANFD_FIFO_DEPTH ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct net_device*,size_t) ; 
 struct rcar_canfd_channel* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct rcar_canfd_channel*,struct canfd_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC19(struct sk_buff *skb,
					 struct net_device *ndev)
{
	struct rcar_canfd_channel *priv = FUNC13(ndev);
	struct canfd_frame *cf = (struct canfd_frame *)skb->data;
	u32 sts = 0, id, dlc;
	unsigned long flags;
	u32 ch = priv->channel;

	if (FUNC9(ndev, skb))
		return NETDEV_TX_OK;

	if (cf->can_id & CAN_EFF_FLAG) {
		id = cf->can_id & CAN_EFF_MASK;
		id |= RCANFD_CFID_CFIDE;
	} else {
		id = cf->can_id & CAN_SFF_MASK;
	}

	if (cf->can_id & CAN_RTR_FLAG)
		id |= RCANFD_CFID_CFRTR;

	dlc = FUNC1(FUNC11(cf->len));

	if (priv->can.ctrlmode & CAN_CTRLMODE_FD) {
		FUNC16(priv->base,
				 FUNC7(ch, RCANFD_CFFIFO_IDX), id);
		FUNC16(priv->base,
				 FUNC8(ch, RCANFD_CFFIFO_IDX), dlc);

		if (FUNC10(skb)) {
			/* CAN FD frame format */
			sts |= RCANFD_CFFDCSTS_CFFDF;
			if (cf->flags & CANFD_BRS)
				sts |= RCANFD_CFFDCSTS_CFBRS;

			if (priv->can.state == CAN_STATE_ERROR_PASSIVE)
				sts |= RCANFD_CFFDCSTS_CFESI;
		}

		FUNC16(priv->base,
				 FUNC6(ch, RCANFD_CFFIFO_IDX), sts);

		FUNC15(priv, cf,
				    FUNC5(ch, RCANFD_CFFIFO_IDX, 0));
	} else {
		FUNC16(priv->base,
				 FUNC3(ch, RCANFD_CFFIFO_IDX), id);
		FUNC16(priv->base,
				 FUNC4(ch, RCANFD_CFFIFO_IDX), dlc);
		FUNC15(priv, cf,
				    FUNC2(ch, RCANFD_CFFIFO_IDX, 0));
	}

	priv->tx_len[priv->tx_head % RCANFD_FIFO_DEPTH] = cf->len;
	FUNC12(skb, ndev, priv->tx_head % RCANFD_FIFO_DEPTH);

	FUNC17(&priv->tx_lock, flags);
	priv->tx_head++;

	/* Stop the queue if we've filled all FIFO entries */
	if (priv->tx_head - priv->tx_tail >= RCANFD_FIFO_DEPTH)
		FUNC14(ndev);

	/* Start Tx: Write 0xff to CFPC to increment the CPU-side
	 * pointer for the Common FIFO
	 */
	FUNC16(priv->base,
			 FUNC0(ch, RCANFD_CFFIFO_IDX), 0xff);

	FUNC18(&priv->tx_lock, flags);
	return NETDEV_TX_OK;
}