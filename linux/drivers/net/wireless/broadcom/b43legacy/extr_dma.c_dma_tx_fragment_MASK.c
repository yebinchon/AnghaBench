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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {unsigned char* data; int len; int /*<<< orphan*/  dev; int /*<<< orphan*/  cb; } ;
struct ieee80211_tx_info {int dummy; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_dmaring {int current_slot; int used_slots; int /*<<< orphan*/  dev; int /*<<< orphan*/ * txhdr_cache; } ;
struct b43legacy_dmadesc_meta {int is_last_fragment; void* dmaaddr; struct sk_buff* skb; } ;
struct b43legacy_dmadesc32 {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct b43legacy_dmaring*,void*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int,struct ieee80211_tx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_dmaring*,int) ; 
 void* FUNC7 (struct b43legacy_dmaring*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_dmadesc_meta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_dmaring*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_dmaring*,struct b43legacy_dmadesc32*,void*,int,int,int,int) ; 
 struct b43legacy_dmadesc32* FUNC12 (struct b43legacy_dmaring*,int,struct b43legacy_dmadesc_meta**) ; 
 int /*<<< orphan*/  FUNC13 (struct b43legacy_dmaring*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct b43legacy_dmaring*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct b43legacy_dmaring*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static int FUNC22(struct b43legacy_dmaring *ring,
			    struct sk_buff **in_skb)
{
	struct sk_buff *skb = *in_skb;
	struct ieee80211_tx_info *info = FUNC1(skb);
	u8 *header;
	int slot, old_top_slot, old_used_slots;
	int err;
	struct b43legacy_dmadesc32 *desc;
	struct b43legacy_dmadesc_meta *meta;
	struct b43legacy_dmadesc_meta *meta_hdr;
	struct sk_buff *bounce_skb;

#define SLOTS_PER_PACKET  2
	FUNC0(FUNC18(skb)->nr_frags != 0);

	old_top_slot = ring->current_slot;
	old_used_slots = ring->used_slots;

	/* Get a slot for the header. */
	slot = FUNC14(ring);
	desc = FUNC12(ring, slot, &meta_hdr);
	FUNC9(meta_hdr, 0, sizeof(*meta_hdr));

	header = &(ring->txhdr_cache[slot * sizeof(
			       struct b43legacy_txhdr_fw3)]);
	err = FUNC4(ring->dev, header,
				 skb->data, skb->len, info,
				 FUNC6(ring, slot));
	if (FUNC19(err)) {
		ring->current_slot = old_top_slot;
		ring->used_slots = old_used_slots;
		return err;
	}

	meta_hdr->dmaaddr = FUNC7(ring, (unsigned char *)header,
					   sizeof(struct b43legacy_txhdr_fw3), 1);
	if (FUNC3(ring, meta_hdr->dmaaddr,
					sizeof(struct b43legacy_txhdr_fw3), 1)) {
		ring->current_slot = old_top_slot;
		ring->used_slots = old_used_slots;
		return -EIO;
	}
	FUNC11(ring, desc, meta_hdr->dmaaddr,
			     sizeof(struct b43legacy_txhdr_fw3), 1, 0, 0);

	/* Get a slot for the payload. */
	slot = FUNC14(ring);
	desc = FUNC12(ring, slot, &meta);
	FUNC9(meta, 0, sizeof(*meta));

	meta->skb = skb;
	meta->is_last_fragment = true;

	meta->dmaaddr = FUNC7(ring, skb->data, skb->len, 1);
	/* create a bounce buffer in zone_dma on mapping failure. */
	if (FUNC3(ring, meta->dmaaddr, skb->len, 1)) {
		bounce_skb = FUNC2(skb->len, GFP_KERNEL | GFP_DMA);
		if (!bounce_skb) {
			ring->current_slot = old_top_slot;
			ring->used_slots = old_used_slots;
			err = -ENOMEM;
			goto out_unmap_hdr;
		}

		FUNC16(bounce_skb, skb->data, skb->len);
		FUNC8(bounce_skb->cb, skb->cb, sizeof(skb->cb));
		bounce_skb->dev = skb->dev;
		FUNC17(bounce_skb, FUNC15(skb));
		info = FUNC1(bounce_skb);

		FUNC5(skb);
		skb = bounce_skb;
		*in_skb = bounce_skb;
		meta->skb = skb;
		meta->dmaaddr = FUNC7(ring, skb->data, skb->len, 1);
		if (FUNC3(ring, meta->dmaaddr, skb->len, 1)) {
			ring->current_slot = old_top_slot;
			ring->used_slots = old_used_slots;
			err = -EIO;
			goto out_free_bounce;
		}
	}

	FUNC11(ring, desc, meta->dmaaddr,
			     skb->len, 0, 1, 1);

	FUNC21();	/* previous stuff MUST be done */
	/* Now transfer the whole frame. */
	FUNC13(ring, FUNC10(ring, slot));
	return 0;

out_free_bounce:
	FUNC5(skb);
out_unmap_hdr:
	FUNC20(ring, meta_hdr->dmaaddr,
			 sizeof(struct b43legacy_txhdr_fw3), 1);
	return err;
}