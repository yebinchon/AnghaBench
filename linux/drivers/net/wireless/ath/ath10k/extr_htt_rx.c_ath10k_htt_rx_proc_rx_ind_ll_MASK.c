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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct htt_rx_indication_mpdu_range {scalar_t__ mpdu_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  info0; int /*<<< orphan*/  peer_id; int /*<<< orphan*/  info1; } ;
struct htt_rx_indication {TYPE_1__ hdr; } ;
struct ath10k_htt {int /*<<< orphan*/  num_mpdus_ready; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT_DUMP ; 
 int /*<<< orphan*/  HTT_RX_INDICATION_INFO0_EXT_TID ; 
 int /*<<< orphan*/  HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct htt_rx_indication*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,void*,struct htt_rx_indication_mpdu_range*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 struct htt_rx_indication_mpdu_range* FUNC6 (struct htt_rx_indication*) ; 
 int /*<<< orphan*/  FUNC7 (struct htt_rx_indication*,struct htt_rx_indication_mpdu_range*,int) ; 

__attribute__((used)) static void FUNC8(struct ath10k_htt *htt,
					 struct htt_rx_indication *rx)
{
	struct ath10k *ar = htt->ar;
	struct htt_rx_indication_mpdu_range *mpdu_ranges;
	int num_mpdu_ranges;
	int i, mpdu_count = 0;
	u16 peer_id;
	u8 tid;

	num_mpdu_ranges = FUNC0(FUNC2(rx->hdr.info1),
			     HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES);
	peer_id = FUNC1(rx->hdr.peer_id);
	tid =  FUNC0(rx->hdr.info0, HTT_RX_INDICATION_INFO0_EXT_TID);

	mpdu_ranges = FUNC6(rx);

	FUNC3(ar, ATH10K_DBG_HTT_DUMP, NULL, "htt rx ind: ",
			rx, FUNC7(rx, mpdu_ranges, num_mpdu_ranges));

	for (i = 0; i < num_mpdu_ranges; i++)
		mpdu_count += mpdu_ranges[i].mpdu_count;

	FUNC5(mpdu_count, &htt->num_mpdus_ready);

	FUNC4(ar, peer_id, tid, mpdu_ranges,
					     num_mpdu_ranges);
}