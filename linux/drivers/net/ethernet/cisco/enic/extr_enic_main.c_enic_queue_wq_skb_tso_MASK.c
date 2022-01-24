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
struct vnic_wq {int dummy; } ;
struct sk_buff {unsigned int len; unsigned int data; scalar_t__ encapsulation; } ;
struct enic {TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ WQ_ENET_MAX_DESC_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int,unsigned int,int,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (struct sk_buff*) ; 
 unsigned int FUNC11 (struct sk_buff*) ; 
 TYPE_1__* FUNC12 (struct sk_buff*) ; 
 unsigned int FUNC13 (struct sk_buff*) ; 
 unsigned int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct enic *enic, struct vnic_wq *wq,
				 struct sk_buff *skb, unsigned int mss,
				 int vlan_tag_insert, unsigned int vlan_tag,
				 int loopback)
{
	unsigned int frag_len_left = FUNC10(skb);
	unsigned int len_left = skb->len - frag_len_left;
	int eop = (len_left == 0);
	unsigned int offset = 0;
	unsigned int hdr_len;
	dma_addr_t dma_addr;
	unsigned int len;
	skb_frag_t *frag;

	if (skb->encapsulation) {
		hdr_len = FUNC11(skb) - skb->data;
		hdr_len += FUNC5(skb);
		FUNC2(skb);
	} else {
		hdr_len = FUNC13(skb) + FUNC14(skb);
		FUNC1(skb);
	}

	/* Queue WQ_ENET_MAX_DESC_LEN length descriptors
	 * for the main skb fragment
	 */
	while (frag_len_left) {
		len = FUNC6(frag_len_left, (unsigned int)WQ_ENET_MAX_DESC_LEN);
		dma_addr = FUNC7(enic->pdev, skb->data + offset, len,
					  PCI_DMA_TODEVICE);
		if (FUNC15(FUNC0(enic, dma_addr)))
			return -ENOMEM;
		FUNC4(wq, skb, dma_addr, len, mss, hdr_len,
				       vlan_tag_insert, vlan_tag,
				       eop && (len == frag_len_left), loopback);
		frag_len_left -= len;
		offset += len;
	}

	if (eop)
		return 0;

	/* Queue WQ_ENET_MAX_DESC_LEN length descriptors
	 * for additional data fragments
	 */
	for (frag = FUNC12(skb)->frags; len_left; frag++) {
		len_left -= FUNC9(frag);
		frag_len_left = FUNC9(frag);
		offset = 0;

		while (frag_len_left) {
			len = FUNC6(frag_len_left,
				(unsigned int)WQ_ENET_MAX_DESC_LEN);
			dma_addr = FUNC8(&enic->pdev->dev, frag,
						    offset, len,
						    DMA_TO_DEVICE);
			if (FUNC15(FUNC0(enic, dma_addr)))
				return -ENOMEM;
			FUNC3(wq, skb, dma_addr, len,
						(len_left == 0) &&
						 (len == frag_len_left),/*EOP*/
						loopback);
			frag_len_left -= len;
			offset += len;
		}
	}

	return 0;
}