#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int msdu_payld; } ;
struct TYPE_5__ {scalar_t__ fill_cnt; int size_mask; TYPE_1__ sw_rd_idx; struct sk_buff** netbufs_ring; int /*<<< orphan*/  lock; } ;
struct ath10k_htt {struct ath10k* ar; TYPE_2__ rx_ring; } ;
struct ath10k {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT_DUMP ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_htt*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC7(struct ath10k_htt *htt)
{
	struct ath10k *ar = htt->ar;
	int idx;
	struct sk_buff *msdu;

	FUNC5(&htt->rx_ring.lock);

	if (htt->rx_ring.fill_cnt == 0) {
		FUNC3(ar, "tried to pop sk_buff from an empty rx ring\n");
		return NULL;
	}

	idx = htt->rx_ring.sw_rd_idx.msdu_payld;
	msdu = htt->rx_ring.netbufs_ring[idx];
	htt->rx_ring.netbufs_ring[idx] = NULL;
	FUNC2(htt, idx);

	idx++;
	idx &= htt->rx_ring.size_mask;
	htt->rx_ring.sw_rd_idx.msdu_payld = idx;
	htt->rx_ring.fill_cnt--;

	FUNC4(htt->ar->dev,
			 FUNC0(msdu)->paddr,
			 msdu->len + FUNC6(msdu),
			 DMA_FROM_DEVICE);
	FUNC1(ar, ATH10K_DBG_HTT_DUMP, NULL, "htt rx netbuf pop: ",
			msdu->data, msdu->len + FUNC6(msdu));

	return msdu;
}