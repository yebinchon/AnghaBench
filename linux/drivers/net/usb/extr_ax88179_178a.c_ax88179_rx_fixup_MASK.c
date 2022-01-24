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
typedef  int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {scalar_t__ len; int data; int truesize; } ;
struct TYPE_2__ {scalar_t__ hard_header_len; } ;

/* Variables and functions */
 int AX_RXHDR_CRC_ERR ; 
 int AX_RXHDR_DROP_ERR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct usbnet *dev, struct sk_buff *skb)
{
	struct sk_buff *ax_skb;
	int pkt_cnt;
	u32 rx_hdr;
	u16 hdr_off;
	u32 *pkt_hdr;

	/* This check is no longer done by usbnet */
	if (skb->len < dev->net->hard_header_len)
		return 0;

	FUNC7(skb, skb->len - 4);
	rx_hdr = FUNC1(FUNC6(skb));

	pkt_cnt = (u16)rx_hdr;
	hdr_off = (u16)(rx_hdr >> 16);
	pkt_hdr = (u32 *)(skb->data + hdr_off);

	while (pkt_cnt--) {
		u16 pkt_len;

		FUNC2(pkt_hdr);
		pkt_len = (*pkt_hdr >> 16) & 0x1fff;

		/* Check CRC or runt packet */
		if ((*pkt_hdr & AX_RXHDR_CRC_ERR) ||
		    (*pkt_hdr & AX_RXHDR_DROP_ERR)) {
			FUNC4(skb, (pkt_len + 7) & 0xFFF8);
			pkt_hdr++;
			continue;
		}

		if (pkt_cnt == 0) {
			/* Skip IP alignment psudo header */
			FUNC4(skb, 2);
			skb->len = pkt_len;
			FUNC5(skb, pkt_len);
			skb->truesize = pkt_len + sizeof(struct sk_buff);
			FUNC0(skb, pkt_hdr);
			return 1;
		}

		ax_skb = FUNC3(skb, GFP_ATOMIC);
		if (ax_skb) {
			ax_skb->len = pkt_len;
			ax_skb->data = skb->data + 2;
			FUNC5(ax_skb, pkt_len);
			ax_skb->truesize = pkt_len + sizeof(struct sk_buff);
			FUNC0(ax_skb, pkt_hdr);
			FUNC8(dev, ax_skb);
		} else {
			return 0;
		}

		FUNC4(skb, (pkt_len + 7) & 0xFFF8);
		pkt_hdr++;
	}
	return 1;
}