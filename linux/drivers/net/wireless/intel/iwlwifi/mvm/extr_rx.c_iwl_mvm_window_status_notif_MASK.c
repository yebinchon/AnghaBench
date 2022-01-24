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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct iwl_ba_window_status_notif {int /*<<< orphan*/ * start_seq_num; int /*<<< orphan*/ * bitmap; int /*<<< orphan*/ * mpdu_rx_count; int /*<<< orphan*/ * ra_tid; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 scalar_t__ BA_WINDOW_STATUS_STA_ID_MSK ; 
 scalar_t__ BA_WINDOW_STATUS_STA_ID_POS ; 
 scalar_t__ BA_WINDOW_STATUS_TID_MSK ; 
 scalar_t__ BA_WINDOW_STATUS_VALID_MSK ; 
 int BA_WINDOW_STREAMS_MAX ; 
 scalar_t__ FUNC0 (struct ieee80211_sta*) ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sta*,size_t,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct iwl_rx_packet*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct iwl_rx_packet* FUNC10 (struct iwl_rx_cmd_buffer*) ; 

void FUNC11(struct iwl_mvm *mvm,
				 struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC10(rxb);
	struct iwl_ba_window_status_notif *notif = (void *)pkt->data;
	int i;
	u32 pkt_len = FUNC3(pkt);

	if (FUNC1(pkt_len != sizeof(*notif),
		      "Received window status notification of wrong size (%u)\n",
		      pkt_len))
		return;

	FUNC8();
	for (i = 0; i < BA_WINDOW_STREAMS_MAX; i++) {
		struct ieee80211_sta *sta;
		u8 sta_id, tid;
		u64 bitmap;
		u32 ssn;
		u16 ratid;
		u16 received_mpdu;

		ratid = FUNC4(notif->ra_tid[i]);
		/* check that this TID is valid */
		if (!(ratid & BA_WINDOW_STATUS_VALID_MSK))
			continue;

		received_mpdu = FUNC4(notif->mpdu_rx_count[i]);
		if (received_mpdu == 0)
			continue;

		tid = ratid & BA_WINDOW_STATUS_TID_MSK;
		/* get the station */
		sta_id = (ratid & BA_WINDOW_STATUS_STA_ID_MSK)
			 >> BA_WINDOW_STATUS_STA_ID_POS;
		sta = FUNC7(mvm->fw_id_to_mac_id[sta_id]);
		if (FUNC0(sta))
			continue;
		bitmap = FUNC6(notif->bitmap[i]);
		ssn = FUNC5(notif->start_seq_num[i]);

		/* update mac80211 with the bitmap for the reordering buffer */
		FUNC2(sta, tid, ssn, bitmap,
						     received_mpdu);
	}
	FUNC9();
}