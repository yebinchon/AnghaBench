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
struct ti_hecc_priv {int tx_head; int /*<<< orphan*/  mbx_lock; int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  ndev; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_dlc; int can_id; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int /*<<< orphan*/  HECC_CANMCF ; 
 int HECC_CANMCF_RTR ; 
 int /*<<< orphan*/  HECC_CANMDH ; 
 int /*<<< orphan*/  HECC_CANMDL ; 
 int /*<<< orphan*/  HECC_CANME ; 
 int /*<<< orphan*/  HECC_CANMID ; 
 int HECC_CANMID_IDE ; 
 int /*<<< orphan*/  HECC_CANTRS ; 
 int HECC_TX_MASK ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*,int) ; 
 int FUNC4 (struct ti_hecc_priv*) ; 
 int FUNC5 (struct ti_hecc_priv*) ; 
 int FUNC6 (struct ti_hecc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_hecc_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_hecc_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_hecc_priv*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct ti_hecc_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb, struct net_device *ndev)
{
	struct ti_hecc_priv *priv = FUNC11(ndev);
	struct can_frame *cf = (struct can_frame *)skb->data;
	u32 mbxno, mbx_mask, data;
	unsigned long flags;

	if (FUNC2(ndev, skb))
		return NETDEV_TX_OK;

	mbxno = FUNC4(priv);
	mbx_mask = FUNC0(mbxno);
	FUNC13(&priv->mbx_lock, flags);
	if (FUNC15(FUNC6(priv, HECC_CANME) & mbx_mask)) {
		FUNC14(&priv->mbx_lock, flags);
		FUNC12(ndev);
		FUNC10(priv->ndev,
			   "BUG: TX mbx not ready tx_head=%08X, tx_tail=%08X\n",
			   priv->tx_head, priv->tx_tail);
		return NETDEV_TX_BUSY;
	}
	FUNC14(&priv->mbx_lock, flags);

	/* Prepare mailbox for transmission */
	data = cf->can_dlc | (FUNC5(priv) << 8);
	if (cf->can_id & CAN_RTR_FLAG) /* Remote transmission request */
		data |= HECC_CANMCF_RTR;
	FUNC9(priv, mbxno, HECC_CANMCF, data);

	if (cf->can_id & CAN_EFF_FLAG) /* Extended frame format */
		data = (cf->can_id & CAN_EFF_MASK) | HECC_CANMID_IDE;
	else /* Standard frame format */
		data = (cf->can_id & CAN_SFF_MASK) << 18;
	FUNC9(priv, mbxno, HECC_CANMID, data);
	FUNC9(priv, mbxno, HECC_CANMDL,
		       FUNC1(*(__be32 *)(cf->data)));
	if (cf->can_dlc > 4)
		FUNC9(priv, mbxno, HECC_CANMDH,
			       FUNC1(*(__be32 *)(cf->data + 4)));
	else
		*(u32 *)(cf->data + 4) = 0;
	FUNC3(skb, ndev, mbxno);

	FUNC13(&priv->mbx_lock, flags);
	--priv->tx_head;
	if ((FUNC6(priv, HECC_CANME) & FUNC0(FUNC4(priv))) ||
	    (priv->tx_head & HECC_TX_MASK) == HECC_TX_MASK) {
		FUNC12(ndev);
	}
	FUNC7(priv, HECC_CANME, mbx_mask);
	FUNC14(&priv->mbx_lock, flags);

	FUNC8(priv, HECC_CANTRS, mbx_mask);

	return NETDEV_TX_OK;
}