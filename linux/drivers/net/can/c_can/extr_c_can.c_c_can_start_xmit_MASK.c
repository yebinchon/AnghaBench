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
struct net_device {int dummy; } ;
struct can_frame {int /*<<< orphan*/  can_dlc; } ;
struct c_can_priv {int /*<<< orphan*/  tx_active; int /*<<< orphan*/ * dlc; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int C_CAN_MSG_OBJ_TX_FIRST ; 
 int C_CAN_MSG_OBJ_TX_NUM ; 
 int /*<<< orphan*/  IF_COMM_TX ; 
 int /*<<< orphan*/  IF_TX ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,struct can_frame*,int) ; 
 scalar_t__ FUNC4 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct c_can_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb,
				    struct net_device *dev)
{
	struct can_frame *frame = (struct can_frame *)skb->data;
	struct c_can_priv *priv = FUNC7(dev);
	u32 idx, obj;

	if (FUNC4(dev, skb))
		return NETDEV_TX_OK;
	/*
	 * This is not a FIFO. C/D_CAN sends out the buffers
	 * prioritized. The lowest buffer number wins.
	 */
	idx = FUNC6(FUNC1(&priv->tx_active));
	obj = idx + C_CAN_MSG_OBJ_TX_FIRST;

	/* If this is the last buffer, stop the xmit queue */
	if (idx == C_CAN_MSG_OBJ_TX_NUM - 1)
		FUNC8(dev);
	/*
	 * Store the message in the interface so we can call
	 * can_put_echo_skb(). We must do this before we enable
	 * transmit as we might race against do_tx().
	 */
	FUNC3(dev, IF_TX, frame, idx);
	priv->dlc[idx] = frame->can_dlc;
	FUNC5(skb, dev, idx);

	/* Update the active bits */
	FUNC0((1 << idx), &priv->tx_active);
	/* Start transmission */
	FUNC2(dev, IF_TX, obj, IF_COMM_TX);

	return NETDEV_TX_OK;
}