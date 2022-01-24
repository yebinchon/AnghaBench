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
struct sk_buff {scalar_t__ data; } ;
struct b43legacy_rxhdr_fw3 {scalar_t__ frame_len; } ;
struct b43legacy_hwtxstatus {scalar_t__ cookie; } ;
struct b43legacy_dmaring {int /*<<< orphan*/  rx_buffersize; int /*<<< orphan*/  tx; } ;
struct b43legacy_dmadesc_meta {int /*<<< orphan*/  dmaaddr; struct sk_buff* skb; } ;
struct b43legacy_dmadesc32 {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_DMA ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct b43legacy_dmaring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_dmaring*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_dmaring*,struct b43legacy_dmadesc32*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct b43legacy_dmaring *ring,
			       struct b43legacy_dmadesc32 *desc,
			       struct b43legacy_dmadesc_meta *meta,
			       gfp_t gfp_flags)
{
	struct b43legacy_rxhdr_fw3 *rxhdr;
	struct b43legacy_hwtxstatus *txstat;
	dma_addr_t dmaaddr;
	struct sk_buff *skb;

	FUNC0(ring->tx);

	skb = FUNC1(ring->rx_buffersize, gfp_flags);
	if (FUNC6(!skb))
		return -ENOMEM;
	dmaaddr = FUNC4(ring, skb->data,
				 ring->rx_buffersize, 0);
	if (FUNC2(ring, dmaaddr, ring->rx_buffersize, 0)) {
		/* ugh. try to realloc in zone_dma */
		gfp_flags |= GFP_DMA;

		FUNC3(skb);

		skb = FUNC1(ring->rx_buffersize, gfp_flags);
		if (FUNC6(!skb))
			return -ENOMEM;
		dmaaddr = FUNC4(ring, skb->data,
					 ring->rx_buffersize, 0);
	}

	if (FUNC2(ring, dmaaddr, ring->rx_buffersize, 0)) {
		FUNC3(skb);
		return -EIO;
	}

	meta->skb = skb;
	meta->dmaaddr = dmaaddr;
	FUNC5(ring, desc, dmaaddr, ring->rx_buffersize, 0, 0, 0);

	rxhdr = (struct b43legacy_rxhdr_fw3 *)(skb->data);
	rxhdr->frame_len = 0;
	txstat = (struct b43legacy_hwtxstatus *)(skb->data);
	txstat->cookie = 0;

	return 0;
}