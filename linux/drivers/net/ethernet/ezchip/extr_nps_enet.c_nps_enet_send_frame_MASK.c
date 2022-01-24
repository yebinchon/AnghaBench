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
typedef  scalar_t__ u32 ;
struct sk_buff {short len; scalar_t__ data; } ;
struct nps_enet_priv {scalar_t__ regs_base; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (short,int) ; 
 int FUNC1 (unsigned long,int) ; 
 scalar_t__ NPS_ENET_ENABLE ; 
 scalar_t__ NPS_ENET_REG_TX_BUF ; 
 scalar_t__ NPS_ENET_REG_TX_CTL ; 
 scalar_t__ TX_CTL_CT_SHIFT ; 
 short TX_CTL_NT_SHIFT ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*,scalar_t__) ; 
 struct nps_enet_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nps_enet_priv*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev,
				struct sk_buff *skb)
{
	struct nps_enet_priv *priv = FUNC4(ndev);
	u32 tx_ctrl_value = 0;
	short length = skb->len;
	u32 i, len = FUNC0(length, sizeof(u32));
	u32 *src = (void *)skb->data;
	bool src_is_aligned = FUNC1((unsigned long)src, sizeof(u32));

	/* In case src is not aligned we need an intermediate buffer */
	if (src_is_aligned)
		FUNC3(priv->regs_base + NPS_ENET_REG_TX_BUF, src, len);
	else /* !src_is_aligned */
		for (i = 0; i < len; i++, src++)
			FUNC5(priv, NPS_ENET_REG_TX_BUF,
					 FUNC2(src));

	/* Write the length of the Frame */
	tx_ctrl_value |= length << TX_CTL_NT_SHIFT;

	tx_ctrl_value |= NPS_ENET_ENABLE << TX_CTL_CT_SHIFT;
	/* Send Frame */
	FUNC5(priv, NPS_ENET_REG_TX_CTL, tx_ctrl_value);
}