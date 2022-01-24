#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  tx_desc ;
struct usbnet {int maxpacket; TYPE_1__* net; int /*<<< orphan*/  can_dma_sg; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int gso_size; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 int AQ_TX_DESC_DROP_PADD ; 
 int AQ_TX_DESC_LEN_MASK ; 
 int AQ_TX_DESC_MSS_MASK ; 
 int AQ_TX_DESC_MSS_SHIFT ; 
 int AQ_TX_DESC_VLAN ; 
 int AQ_TX_DESC_VLAN_MASK ; 
 int AQ_TX_DESC_VLAN_SHIFT ; 
 int NETIF_F_SG ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,scalar_t__*) ; 

__attribute__((used)) static struct sk_buff *FUNC11(struct usbnet *dev, struct sk_buff *skb,
				       gfp_t flags)
{
	int frame_size = dev->maxpacket;
	struct sk_buff *new_skb = NULL;
	u64 *tx_desc_ptr = NULL;
	int padding_size = 0;
	int headroom = 0;
	int tailroom = 0;
	u64 tx_desc = 0;
	u16 tci = 0;

	/*Length of actual data*/
	tx_desc |= skb->len & AQ_TX_DESC_LEN_MASK;

	/* TSO MSS */
	tx_desc |= ((u64)(FUNC7(skb)->gso_size & AQ_TX_DESC_MSS_MASK)) <<
		   AQ_TX_DESC_MSS_SHIFT;

	headroom = (skb->len + sizeof(tx_desc)) % 8;
	if (headroom != 0)
		padding_size = 8 - headroom;

	if (((skb->len + sizeof(tx_desc) + padding_size) % frame_size) == 0) {
		padding_size += 8;
		tx_desc |= AQ_TX_DESC_DROP_PADD;
	}

	/* Vlan Tag */
	if (FUNC10(skb, &tci) >= 0) {
		tx_desc |= AQ_TX_DESC_VLAN;
		tx_desc |= ((u64)tci & AQ_TX_DESC_VLAN_MASK) <<
			   AQ_TX_DESC_VLAN_SHIFT;
	}

	if (!dev->can_dma_sg && (dev->net->features & NETIF_F_SG) &&
	    FUNC4(skb))
		return NULL;

	headroom = FUNC3(skb);
	tailroom = FUNC8(skb);

	if (!(headroom >= sizeof(tx_desc) && tailroom >= padding_size)) {
		new_skb = FUNC2(skb, sizeof(tx_desc),
					  padding_size, flags);
		FUNC1(skb);
		skb = new_skb;
		if (!skb)
			return NULL;
	}
	if (padding_size != 0)
		FUNC6(skb, padding_size);
	/* Copy TX header */
	tx_desc_ptr = FUNC5(skb, sizeof(tx_desc));
	*tx_desc_ptr = FUNC0(tx_desc);

	FUNC9(skb, 1, 0);

	return skb;
}