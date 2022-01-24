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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct iwl_stored_beacon_notif {int band; int /*<<< orphan*/  data; int /*<<< orphan*/  channel; int /*<<< orphan*/  system_time; int /*<<< orphan*/  tsf; int /*<<< orphan*/  byte_count; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  band; int /*<<< orphan*/  freq; void* device_timestamp; int /*<<< orphan*/  flag; int /*<<< orphan*/  mactime; } ;
typedef  int /*<<< orphan*/  rx_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  RX_FLAG_MACTIME_PLCP_START ; 
 int /*<<< orphan*/  RX_RES_PHY_FLAGS_BAND_24 ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 struct iwl_rx_packet* FUNC11 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC13(struct iwl_mvm *mvm,
				    struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC11(rxb);
	struct iwl_stored_beacon_notif *sb = (void *)pkt->data;
	struct ieee80211_rx_status rx_status;
	struct sk_buff *skb;
	u32 size = FUNC7(sb->byte_count);

	if (size == 0)
		return;

	skb = FUNC2(size, GFP_ATOMIC);
	if (!skb) {
		FUNC1(mvm, "alloc_skb failed\n");
		return;
	}

	/* update rx_status according to the notification's metadata */
	FUNC10(&rx_status, 0, sizeof(rx_status));
	rx_status.mactime = FUNC8(sb->tsf);
	/* TSF as indicated by the firmware  is at INA time */
	rx_status.flag |= RX_FLAG_MACTIME_PLCP_START;
	rx_status.device_timestamp = FUNC7(sb->system_time);
	rx_status.band =
		(sb->band & FUNC3(RX_RES_PHY_FLAGS_BAND_24)) ?
				NL80211_BAND_2GHZ : NL80211_BAND_5GHZ;
	rx_status.freq =
		FUNC4(FUNC6(sb->channel),
					       rx_status.band);

	/* copy the data */
	FUNC12(skb, sb->data, size);
	FUNC9(FUNC0(skb), &rx_status, sizeof(rx_status));

	/* pass it as regular rx to mac80211 */
	FUNC5(mvm->hw, NULL, skb, NULL);
}