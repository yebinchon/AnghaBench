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
typedef  int u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct htt_rx_in_ord_msdu_desc {int /*<<< orphan*/  msdu_len; int /*<<< orphan*/  msdu_paddr; } ;
struct htt_rx_in_ord_ind {int info; int /*<<< orphan*/  msdu_count; struct htt_rx_in_ord_msdu_desc* msdu_descs32; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct htt_rx_desc {TYPE_2__ attention; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct ath10k_htt {struct ath10k* ar; TYPE_1__ rx_ring; } ;
struct ath10k {scalar_t__ monitor_arvif; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int HTT_RX_IN_ORD_IND_INFO_OFFLOAD_MASK ; 
 int RX_ATTENTION_FLAGS_MSDU_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int FUNC4 (struct ath10k_htt*,struct sk_buff*,struct htt_rx_in_ord_msdu_desc**) ; 
 struct sk_buff* FUNC5 (struct ath10k_htt*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*,struct htt_rx_desc*,int) ; 

__attribute__((used)) static int FUNC11(struct ath10k_htt *htt,
					  struct htt_rx_in_ord_ind *ev,
					  struct sk_buff_head *list)
{
	struct ath10k *ar = htt->ar;
	struct htt_rx_in_ord_msdu_desc *msdu_desc = ev->msdu_descs32;
	struct htt_rx_desc *rxd;
	struct sk_buff *msdu;
	int msdu_count, ret;
	bool is_offload;
	u32 paddr;

	FUNC7(&htt->rx_ring.lock);

	msdu_count = FUNC0(ev->msdu_count);
	is_offload = !!(ev->info & HTT_RX_IN_ORD_IND_INFO_OFFLOAD_MASK);

	while (msdu_count--) {
		paddr = FUNC1(msdu_desc->msdu_paddr);

		msdu = FUNC5(htt, paddr);
		if (!msdu) {
			FUNC2(list);
			return -ENOENT;
		}

		if (!is_offload && ar->monitor_arvif) {
			ret = FUNC4(htt, msdu,
								&msdu_desc);
			if (ret) {
				FUNC2(list);
				return ret;
			}
			FUNC3(list, msdu);
			msdu_desc++;
			continue;
		}

		FUNC3(list, msdu);

		if (!is_offload) {
			rxd = (void *)msdu->data;

			FUNC10(ar, rxd, sizeof(*rxd));

			FUNC9(msdu, sizeof(*rxd));
			FUNC8(msdu, sizeof(*rxd));
			FUNC9(msdu, FUNC0(msdu_desc->msdu_len));

			if (!(FUNC1(rxd->attention.flags) &
			      RX_ATTENTION_FLAGS_MSDU_DONE)) {
				FUNC6(htt->ar, "tried to pop an incomplete frame, oops!\n");
				return -EIO;
			}
		}

		msdu_desc++;
	}

	return 0;
}