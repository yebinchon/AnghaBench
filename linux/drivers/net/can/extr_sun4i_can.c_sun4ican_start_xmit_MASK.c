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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int ctrlmode; } ;
struct sun4ican_priv {int base; TYPE_1__ can; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int* data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int canid_t ;

/* Variables and functions */
 int CAN_CTRLMODE_LOOPBACK ; 
 int CAN_EFF_FLAG ; 
 int CAN_RTR_FLAG ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  SUN4I_CMD_SELF_RCV_REQ ; 
 int /*<<< orphan*/  SUN4I_CMD_TRANS_REQ ; 
 int SUN4I_MSG_EFF_FLAG ; 
 int SUN4I_MSG_RTR_FLAG ; 
 int SUN4I_REG_BUF0_ADDR ; 
 int SUN4I_REG_BUF1_ADDR ; 
 int SUN4I_REG_BUF2_ADDR ; 
 int SUN4I_REG_BUF3_ADDR ; 
 int SUN4I_REG_BUF4_ADDR ; 
 int SUN4I_REG_BUF5_ADDR ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 struct sun4ican_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sun4ican_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	struct sun4ican_priv *priv = FUNC2(dev);
	struct can_frame *cf = (struct can_frame *)skb->data;
	u8 dlc;
	u32 dreg, msg_flag_n;
	canid_t id;
	int i;

	if (FUNC0(dev, skb))
		return NETDEV_TX_OK;

	FUNC3(dev);

	id = cf->can_id;
	dlc = cf->can_dlc;
	msg_flag_n = dlc;

	if (id & CAN_RTR_FLAG)
		msg_flag_n |= SUN4I_MSG_RTR_FLAG;

	if (id & CAN_EFF_FLAG) {
		msg_flag_n |= SUN4I_MSG_EFF_FLAG;
		dreg = SUN4I_REG_BUF5_ADDR;
		FUNC5((id >> 21) & 0xFF, priv->base + SUN4I_REG_BUF1_ADDR);
		FUNC5((id >> 13) & 0xFF, priv->base + SUN4I_REG_BUF2_ADDR);
		FUNC5((id >> 5)  & 0xFF, priv->base + SUN4I_REG_BUF3_ADDR);
		FUNC5((id << 3)  & 0xF8, priv->base + SUN4I_REG_BUF4_ADDR);
	} else {
		dreg = SUN4I_REG_BUF3_ADDR;
		FUNC5((id >> 3) & 0xFF, priv->base + SUN4I_REG_BUF1_ADDR);
		FUNC5((id << 5) & 0xE0, priv->base + SUN4I_REG_BUF2_ADDR);
	}

	for (i = 0; i < dlc; i++)
		FUNC5(cf->data[i], priv->base + (dreg + i * 4));

	FUNC5(msg_flag_n, priv->base + SUN4I_REG_BUF0_ADDR);

	FUNC1(skb, dev, 0);

	if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
		FUNC4(priv, SUN4I_CMD_SELF_RCV_REQ);
	else
		FUNC4(priv, SUN4I_CMD_TRANS_REQ);

	return NETDEV_TX_OK;
}