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
typedef  int /*<<< orphan*/  u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rxfcb {int /*<<< orphan*/  vlctl; int /*<<< orphan*/  flags; } ;
struct net_device {int features; } ;
struct gfar_private {scalar_t__ padding; scalar_t__ hwts_rx_en; scalar_t__ uses_rxfcb; } ;

/* Variables and functions */
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ GMAC_FCB_LEN ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int RXFCB_VLN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct rxfcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 struct gfar_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 struct skb_shared_hwtstamps* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct net_device *ndev, struct sk_buff *skb)
{
	struct gfar_private *priv = FUNC6(ndev);
	struct rxfcb *fcb = NULL;

	/* fcb is at the beginning if exists */
	fcb = (struct rxfcb *)skb->data;

	/* Remove the FCB from the skb
	 * Remove the padded bytes, if there are any
	 */
	if (priv->uses_rxfcb)
		FUNC10(skb, GMAC_FCB_LEN);

	/* Get receive timestamp from the skb */
	if (priv->hwts_rx_en) {
		struct skb_shared_hwtstamps *shhwtstamps = FUNC9(skb);
		u64 *ns = (u64 *) skb->data;

		FUNC5(shhwtstamps, 0, sizeof(*shhwtstamps));
		shhwtstamps->hwtstamp = FUNC7(FUNC2(*ns));
	}

	if (priv->padding)
		FUNC10(skb, priv->padding);

	/* Trim off the FCS */
	FUNC8(skb, skb->len - ETH_FCS_LEN);

	if (ndev->features & NETIF_F_RXCSUM)
		FUNC3(skb, fcb);

	/* There's need to check for NETIF_F_HW_VLAN_CTAG_RX here.
	 * Even if vlan rx accel is disabled, on some chips
	 * RXFCB_VLN is pseudo randomly set.
	 */
	if (ndev->features & NETIF_F_HW_VLAN_CTAG_RX &&
	    FUNC1(fcb->flags) & RXFCB_VLN)
		FUNC0(skb, FUNC4(ETH_P_8021Q),
				       FUNC1(fcb->vlctl));
}