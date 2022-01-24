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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct il_scan_channel {int type; int dsp_atten; int tx_gain; void* passive_dwell; void* active_dwell; void* channel; } ;
struct il_priv {TYPE_1__* scan_request; } ;
struct il_channel_info {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_channel {int band; scalar_t__ hw_value; int flags; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int n_channels; struct ieee80211_channel** channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int IEEE80211_CHAN_NO_IR ; 
 int FUNC1 (scalar_t__) ; 
 int NL80211_BAND_5GHZ ; 
 int SCAN_CHANNEL_TYPE_ACTIVE ; 
 int SCAN_CHANNEL_TYPE_PASSIVE ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct il_priv*,int,scalar_t__) ; 
 struct il_channel_info* FUNC4 (struct il_priv*,int,scalar_t__) ; 
 struct ieee80211_supported_band* FUNC5 (struct il_priv*,int) ; 
 scalar_t__ FUNC6 (struct il_priv*,int,struct ieee80211_vif*) ; 
 scalar_t__ FUNC7 (struct il_channel_info const*) ; 
 int /*<<< orphan*/  FUNC8 (struct il_channel_info const*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct il_priv *il, struct ieee80211_vif *vif,
			     enum nl80211_band band, u8 is_active,
			     u8 n_probes, struct il_scan_channel *scan_ch)
{
	struct ieee80211_channel *chan;
	const struct ieee80211_supported_band *sband;
	const struct il_channel_info *ch_info;
	u16 passive_dwell = 0;
	u16 active_dwell = 0;
	int added, i;
	u16 channel;

	sband = FUNC5(il, band);
	if (!sband)
		return 0;

	active_dwell = FUNC3(il, band, n_probes);
	passive_dwell = FUNC6(il, band, vif);

	if (passive_dwell <= active_dwell)
		passive_dwell = active_dwell + 1;

	for (i = 0, added = 0; i < il->scan_request->n_channels; i++) {
		chan = il->scan_request->channels[i];

		if (chan->band != band)
			continue;

		channel = chan->hw_value;
		scan_ch->channel = FUNC2(channel);

		ch_info = FUNC4(il, band, channel);
		if (!FUNC8(ch_info)) {
			FUNC0("Channel %d is INVALID for this band.\n",
			       channel);
			continue;
		}

		if (!is_active || FUNC7(ch_info) ||
		    (chan->flags & IEEE80211_CHAN_NO_IR))
			scan_ch->type = SCAN_CHANNEL_TYPE_PASSIVE;
		else
			scan_ch->type = SCAN_CHANNEL_TYPE_ACTIVE;

		if (n_probes)
			scan_ch->type |= FUNC1(n_probes);

		scan_ch->active_dwell = FUNC2(active_dwell);
		scan_ch->passive_dwell = FUNC2(passive_dwell);

		/* Set txpower levels to defaults */
		scan_ch->dsp_atten = 110;

		/* NOTE: if we were doing 6Mb OFDM for scans we'd use
		 * power level:
		 * scan_ch->tx_gain = ((1 << 5) | (2 << 3)) | 3;
		 */
		if (band == NL80211_BAND_5GHZ)
			scan_ch->tx_gain = ((1 << 5) | (3 << 3)) | 3;
		else
			scan_ch->tx_gain = ((1 << 5) | (5 << 3));

		FUNC0("Scanning ch=%d prob=0x%X [%s %d]\n", channel,
		       FUNC9(scan_ch->type),
		       (scan_ch->
			type & SCAN_CHANNEL_TYPE_ACTIVE) ? "ACTIVE" : "PASSIVE",
		       (scan_ch->
			type & SCAN_CHANNEL_TYPE_ACTIVE) ? active_dwell :
		       passive_dwell);

		scan_ch++;
		added++;
	}

	FUNC0("total channels to scan %d\n", added);
	return added;
}