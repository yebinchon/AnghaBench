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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct sk_buff {int csum_level; int /*<<< orphan*/  ip_summed; TYPE_2__* dev; int /*<<< orphan*/  protocol; } ;
struct rx_tpa_end_cmp_ext {int dummy; } ;
struct rx_tpa_end_cmp {int dummy; } ;
struct bnxt_tpa_info {scalar_t__ agg_count; scalar_t__* data; scalar_t__* data_ptr; unsigned int len; scalar_t__ hash_type; int flags2; size_t metadata; int /*<<< orphan*/  rss_hash; int /*<<< orphan*/  cfa_code; int /*<<< orphan*/  mapping; } ;
struct bnxt_rx_ring_info {struct bnxt_tpa_info* rx_tpa; } ;
struct bnxt_napi {int in_reset; struct bnxt_rx_ring_info* rx_ring; } ;
struct bnxt_cp_ring_info {struct bnxt_napi* bnapi; } ;
struct bnxt {int flags; unsigned int rx_copy_thresh; int rx_offset; int /*<<< orphan*/  rx_dir; int /*<<< orphan*/  rx_buf_use_size; TYPE_1__* pdev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int features; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BNXT_AGG_EVENT ; 
 int BNXT_FLAG_CHIP_P5 ; 
 int BNXT_FLAG_GRO ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_ATTR_WEAK_ORDERING ; 
 int /*<<< orphan*/  EBUSY ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ PKT_HASH_TYPE_NONE ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t RX_CMP_FLAGS2_METADATA_TCI_MASK ; 
 size_t RX_CMP_FLAGS2_METADATA_TPID_SFT ; 
 int RX_CMP_FLAGS2_META_FORMAT_VLAN ; 
 int RX_CMP_FLAGS2_T_L4_CS_CALC ; 
 int RX_TPA_START_CMP_FLAGS2_L4_CS_CALC ; 
 scalar_t__ FUNC3 (struct rx_tpa_end_cmp*) ; 
 scalar_t__ FUNC4 (struct rx_tpa_end_cmp_ext*) ; 
 size_t FUNC5 (struct rx_tpa_end_cmp*) ; 
 size_t FUNC6 (struct rx_tpa_end_cmp*) ; 
 scalar_t__ FUNC7 (struct rx_tpa_end_cmp_ext*) ; 
 int /*<<< orphan*/  FUNC8 (struct rx_tpa_end_cmp*) ; 
 scalar_t__* FUNC9 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct bnxt_cp_ring_info*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct bnxt*,struct bnxt_cp_ring_info*,scalar_t__,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC13 (struct bnxt_napi*,scalar_t__*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct bnxt*,struct bnxt_cp_ring_info*,int /*<<< orphan*/ *,struct rx_tpa_end_cmp*) ; 
 int /*<<< orphan*/  FUNC15 (struct bnxt_rx_ring_info*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct bnxt*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC17 (struct bnxt*,struct bnxt_tpa_info*,struct rx_tpa_end_cmp*,struct rx_tpa_end_cmp_ext*,struct sk_buff*) ; 
 size_t FUNC18 (struct bnxt_rx_ring_info*,size_t) ; 
 struct sk_buff* FUNC19 (struct bnxt*,struct bnxt_cp_ring_info*,struct sk_buff*,size_t,scalar_t__,int) ; 
 struct sk_buff* FUNC20 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (size_t) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC32 (int) ; 

__attribute__((used)) static inline struct sk_buff *FUNC33(struct bnxt *bp,
					   struct bnxt_cp_ring_info *cpr,
					   u32 *raw_cons,
					   struct rx_tpa_end_cmp *tpa_end,
					   struct rx_tpa_end_cmp_ext *tpa_end1,
					   u8 *event)
{
	struct bnxt_napi *bnapi = cpr->bnapi;
	struct bnxt_rx_ring_info *rxr = bnapi->rx_ring;
	u8 *data_ptr, agg_bufs;
	unsigned int len;
	struct bnxt_tpa_info *tpa_info;
	dma_addr_t mapping;
	struct sk_buff *skb;
	u16 idx = 0, agg_id;
	void *data;
	bool gro;

	if (FUNC32(bnapi->in_reset)) {
		int rc = FUNC14(bp, cpr, raw_cons, tpa_end);

		if (rc < 0)
			return FUNC0(-EBUSY);
		return NULL;
	}

	if (bp->flags & BNXT_FLAG_CHIP_P5) {
		agg_id = FUNC6(tpa_end);
		agg_id = FUNC18(rxr, agg_id);
		agg_bufs = FUNC4(tpa_end1);
		tpa_info = &rxr->rx_tpa[agg_id];
		if (FUNC32(agg_bufs != tpa_info->agg_count)) {
			FUNC26(bp->dev, "TPA end agg_buf %d != expected agg_bufs %d\n",
				    agg_bufs, tpa_info->agg_count);
			agg_bufs = tpa_info->agg_count;
		}
		tpa_info->agg_count = 0;
		*event |= BNXT_AGG_EVENT;
		FUNC15(rxr, agg_id);
		idx = agg_id;
		gro = !!(bp->flags & BNXT_FLAG_GRO);
	} else {
		agg_id = FUNC5(tpa_end);
		agg_bufs = FUNC3(tpa_end);
		tpa_info = &rxr->rx_tpa[agg_id];
		idx = FUNC2(*raw_cons);
		if (agg_bufs) {
			if (!FUNC12(bp, cpr, agg_bufs, raw_cons))
				return FUNC0(-EBUSY);

			*event |= BNXT_AGG_EVENT;
			idx = FUNC1(idx);
		}
		gro = !!FUNC8(tpa_end);
	}
	data = tpa_info->data;
	data_ptr = tpa_info->data_ptr;
	FUNC27(data_ptr);
	len = tpa_info->len;
	mapping = tpa_info->mapping;

	if (FUNC32(agg_bufs > MAX_SKB_FRAGS || FUNC7(tpa_end1))) {
		FUNC11(cpr, idx, agg_bufs);
		if (agg_bufs > MAX_SKB_FRAGS)
			FUNC26(bp->dev, "TPA frags %d exceeded MAX_SKB_FRAGS %d\n",
				    agg_bufs, (int)MAX_SKB_FRAGS);
		return NULL;
	}

	if (len <= bp->rx_copy_thresh) {
		skb = FUNC13(bnapi, data_ptr, len, mapping);
		if (!skb) {
			FUNC11(cpr, idx, agg_bufs);
			return NULL;
		}
	} else {
		u8 *new_data;
		dma_addr_t new_mapping;

		new_data = FUNC9(bp, &new_mapping, GFP_ATOMIC);
		if (!new_data) {
			FUNC11(cpr, idx, agg_bufs);
			return NULL;
		}

		tpa_info->data = new_data;
		tpa_info->data_ptr = new_data + bp->rx_offset;
		tpa_info->mapping = new_mapping;

		skb = FUNC20(data, 0);
		FUNC21(&bp->pdev->dev, mapping,
				       bp->rx_buf_use_size, bp->rx_dir,
				       DMA_ATTR_WEAK_ORDERING);

		if (!skb) {
			FUNC24(data);
			FUNC11(cpr, idx, agg_bufs);
			return NULL;
		}
		FUNC30(skb, bp->rx_offset);
		FUNC29(skb, len);
	}

	if (agg_bufs) {
		skb = FUNC19(bp, cpr, skb, idx, agg_bufs, true);
		if (!skb) {
			/* Page reuse already handled by bnxt_rx_pages(). */
			return NULL;
		}
	}

	skb->protocol =
		FUNC22(skb, FUNC16(bp, tpa_info->cfa_code));

	if (tpa_info->hash_type != PKT_HASH_TYPE_NONE)
		FUNC31(skb, tpa_info->rss_hash, tpa_info->hash_type);

	if ((tpa_info->flags2 & RX_CMP_FLAGS2_META_FORMAT_VLAN) &&
	    (skb->dev->features & NETIF_F_HW_VLAN_CTAG_RX)) {
		u16 vlan_proto = tpa_info->metadata >>
			RX_CMP_FLAGS2_METADATA_TPID_SFT;
		u16 vtag = tpa_info->metadata & RX_CMP_FLAGS2_METADATA_TCI_MASK;

		FUNC10(skb, FUNC23(vlan_proto), vtag);
	}

	FUNC28(skb);
	if (FUNC25(tpa_info->flags2 & RX_TPA_START_CMP_FLAGS2_L4_CS_CALC)) {
		skb->ip_summed = CHECKSUM_UNNECESSARY;
		skb->csum_level =
			(tpa_info->flags2 & RX_CMP_FLAGS2_T_L4_CS_CALC) >> 3;
	}

	if (gro)
		skb = FUNC17(bp, tpa_info, tpa_end, tpa_end1, skb);

	return skb;
}