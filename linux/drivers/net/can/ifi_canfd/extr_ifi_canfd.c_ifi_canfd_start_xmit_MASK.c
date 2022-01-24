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
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct ifi_canfd_priv {scalar_t__ base; TYPE_1__ can; } ;
struct canfd_frame {int can_id; int len; int flags; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int CANFD_BRS ; 
 int CAN_CTRLMODE_FD ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 scalar_t__ IFI_CANFD_TXFIFO_DATA ; 
 scalar_t__ IFI_CANFD_TXFIFO_DLC ; 
 int IFI_CANFD_TXFIFO_DLC_BRS ; 
 int IFI_CANFD_TXFIFO_DLC_EDL ; 
 int IFI_CANFD_TXFIFO_DLC_RTR ; 
 scalar_t__ IFI_CANFD_TXFIFO_ID ; 
 int IFI_CANFD_TXFIFO_ID_IDE ; 
 int IFI_CANFD_TXFIFO_ID_ID_XTD_MASK ; 
 int IFI_CANFD_TXFIFO_ID_ID_XTD_OFFSET ; 
 int IFI_CANFD_TXFIFO_ID_ID_XTD_WIDTH ; 
 scalar_t__ IFI_CANFD_TXFIFO_REPEATCOUNT ; 
 scalar_t__ IFI_CANFD_TXFIFO_SUSPEND_US ; 
 scalar_t__ IFI_CANFD_TXSTCMD ; 
 int IFI_CANFD_TXSTCMD_ADD_MSG ; 
 int IFI_CANFD_TXSTCMD_FULL ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct ifi_canfd_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb,
					struct net_device *ndev)
{
	struct ifi_canfd_priv *priv = FUNC5(ndev);
	struct canfd_frame *cf = (struct canfd_frame *)skb->data;
	u32 txst, txid, txdlc;
	int i;

	if (FUNC0(ndev, skb))
		return NETDEV_TX_OK;

	/* Check if the TX buffer is full */
	txst = FUNC7(priv->base + IFI_CANFD_TXSTCMD);
	if (txst & IFI_CANFD_TXSTCMD_FULL) {
		FUNC6(ndev);
		FUNC4(ndev, "BUG! TX FIFO full when queue awake!\n");
		return NETDEV_TX_BUSY;
	}

	FUNC6(ndev);

	if (cf->can_id & CAN_EFF_FLAG) {
		txid = cf->can_id & CAN_EFF_MASK;
		/*
		 * In case the Extended ID frame is transmitted, the
		 * standard and extended part of the ID are swapped
		 * in the register, so swap them back to send the
		 * correct ID.
		 */
		txid = (txid >> IFI_CANFD_TXFIFO_ID_ID_XTD_WIDTH) |
		       ((txid & IFI_CANFD_TXFIFO_ID_ID_XTD_MASK) <<
		         IFI_CANFD_TXFIFO_ID_ID_XTD_OFFSET);
		txid |= IFI_CANFD_TXFIFO_ID_IDE;
	} else {
		txid = cf->can_id & CAN_SFF_MASK;
	}

	txdlc = FUNC2(cf->len);
	if ((priv->can.ctrlmode & CAN_CTRLMODE_FD) && FUNC1(skb)) {
		txdlc |= IFI_CANFD_TXFIFO_DLC_EDL;
		if (cf->flags & CANFD_BRS)
			txdlc |= IFI_CANFD_TXFIFO_DLC_BRS;
	}

	if (cf->can_id & CAN_RTR_FLAG)
		txdlc |= IFI_CANFD_TXFIFO_DLC_RTR;

	/* message ram configuration */
	FUNC8(txid, priv->base + IFI_CANFD_TXFIFO_ID);
	FUNC8(txdlc, priv->base + IFI_CANFD_TXFIFO_DLC);

	for (i = 0; i < cf->len; i += 4) {
		FUNC8(*(u32 *)(cf->data + i),
		       priv->base + IFI_CANFD_TXFIFO_DATA + i);
	}

	FUNC8(0, priv->base + IFI_CANFD_TXFIFO_REPEATCOUNT);
	FUNC8(0, priv->base + IFI_CANFD_TXFIFO_SUSPEND_US);

	FUNC3(skb, ndev, 0);

	/* Start the transmission */
	FUNC8(IFI_CANFD_TXSTCMD_ADD_MSG, priv->base + IFI_CANFD_TXSTCMD);

	return NETDEV_TX_OK;
}