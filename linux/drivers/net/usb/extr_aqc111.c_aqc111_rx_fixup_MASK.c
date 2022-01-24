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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct usbnet {int hard_mtu; struct aqc111_data* driver_priv; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  truesize; scalar_t__ data; } ;
struct aqc111_data {scalar_t__ rx_checksum; } ;
typedef  int /*<<< orphan*/  desc_hdr ;

/* Variables and functions */
 int AQ_RX_DH_DESC_OFFSET_MASK ; 
 int AQ_RX_DH_DESC_OFFSET_SHIFT ; 
 int AQ_RX_DH_PKT_CNT_MASK ; 
 int AQ_RX_HW_PAD ; 
 int AQ_RX_PD_DROP ; 
 int AQ_RX_PD_LEN_MASK ; 
 int AQ_RX_PD_LEN_SHIFT ; 
 int AQ_RX_PD_RX_OK ; 
 int AQ_RX_PD_VLAN ; 
 int AQ_RX_PD_VLAN_SHIFT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct usbnet *dev, struct sk_buff *skb)
{
	struct aqc111_data *aqc111_data = dev->driver_priv;
	struct sk_buff *new_skb = NULL;
	u32 pkt_total_offset = 0;
	u64 *pkt_desc_ptr = NULL;
	u32 start_of_descs = 0;
	u32 desc_offset = 0; /*RX Header Offset*/
	u16 pkt_count = 0;
	u64 desc_hdr = 0;
	u16 vlan_tag = 0;
	u32 skb_len = 0;

	if (!skb)
		goto err;

	if (skb->len == 0)
		goto err;

	skb_len = skb->len;
	/* RX Descriptor Header */
	FUNC9(skb, skb->len - sizeof(desc_hdr));
	desc_hdr = FUNC4((u64 *)FUNC8(skb));

	/* Check these packets */
	desc_offset = (desc_hdr & AQ_RX_DH_DESC_OFFSET_MASK) >>
		      AQ_RX_DH_DESC_OFFSET_SHIFT;
	pkt_count = desc_hdr & AQ_RX_DH_PKT_CNT_MASK;
	start_of_descs = skb_len - ((pkt_count + 1) *  sizeof(desc_hdr));

	/* self check descs position */
	if (start_of_descs != desc_offset)
		goto err;

	/* self check desc_offset from header*/
	if (desc_offset >= skb_len)
		goto err;

	if (pkt_count == 0)
		goto err;

	/* Get the first RX packet descriptor */
	pkt_desc_ptr = (u64 *)(skb->data + desc_offset);

	while (pkt_count--) {
		u64 pkt_desc = FUNC4(pkt_desc_ptr);
		u32 pkt_len_with_padd = 0;
		u32 pkt_len = 0;

		pkt_len = (u32)((pkt_desc & AQ_RX_PD_LEN_MASK) >>
			  AQ_RX_PD_LEN_SHIFT);
		pkt_len_with_padd = ((pkt_len + 7) & 0x7FFF8);

		pkt_total_offset += pkt_len_with_padd;
		if (pkt_total_offset > desc_offset ||
		    (pkt_count == 0 && pkt_total_offset != desc_offset)) {
			goto err;
		}

		if (pkt_desc & AQ_RX_PD_DROP ||
		    !(pkt_desc & AQ_RX_PD_RX_OK) ||
		    pkt_len > (dev->hard_mtu + AQ_RX_HW_PAD)) {
			FUNC6(skb, pkt_len_with_padd);
			/* Next RX Packet Descriptor */
			pkt_desc_ptr++;
			continue;
		}

		/* Clone SKB */
		new_skb = FUNC5(skb, GFP_ATOMIC);

		if (!new_skb)
			goto err;

		new_skb->len = pkt_len;
		FUNC6(new_skb, AQ_RX_HW_PAD);
		FUNC7(new_skb, new_skb->len);

		new_skb->truesize = FUNC0(new_skb->len);
		if (aqc111_data->rx_checksum)
			FUNC2(new_skb, pkt_desc);

		if (pkt_desc & AQ_RX_PD_VLAN) {
			vlan_tag = pkt_desc >> AQ_RX_PD_VLAN_SHIFT;
			FUNC1(new_skb, FUNC3(ETH_P_8021Q),
					       vlan_tag & VLAN_VID_MASK);
		}

		FUNC10(dev, new_skb);
		if (pkt_count == 0)
			break;

		FUNC6(skb, pkt_len_with_padd);

		/* Next RX Packet Header */
		pkt_desc_ptr++;

		new_skb = NULL;
	}

	return 1;

err:
	return 0;
}