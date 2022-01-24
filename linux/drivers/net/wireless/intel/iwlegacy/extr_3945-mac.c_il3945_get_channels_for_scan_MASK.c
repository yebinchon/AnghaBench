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
typedef  scalar_t__ u16 ;
struct il_priv {int /*<<< orphan*/  ucode_ver; TYPE_1__* scan_request; } ;
struct il_channel_info {int dummy; } ;
struct TYPE_4__ {int dsp_atten; int tx_gain; } ;
struct il3945_scan_channel {int channel; int type; TYPE_2__ tpc; void* active_dwell; void* passive_dwell; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_channel {int band; int hw_value; int flags; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_3__ {int n_channels; struct ieee80211_channel** channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int IEEE80211_CHAN_NO_IR ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NL80211_BAND_5GHZ ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct il_priv*,int,scalar_t__) ; 
 struct il_channel_info* FUNC5 (struct il_priv*,int,int) ; 
 struct ieee80211_supported_band* FUNC6 (struct il_priv*,int) ; 
 scalar_t__ FUNC7 (struct il_priv*,int,struct ieee80211_vif*) ; 
 scalar_t__ FUNC8 (struct il_channel_info const*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_channel_info const*) ; 

__attribute__((used)) static int
FUNC10(struct il_priv *il, enum nl80211_band band,
			     u8 is_active, u8 n_probes,
			     struct il3945_scan_channel *scan_ch,
			     struct ieee80211_vif *vif)
{
	struct ieee80211_channel *chan;
	const struct ieee80211_supported_band *sband;
	const struct il_channel_info *ch_info;
	u16 passive_dwell = 0;
	u16 active_dwell = 0;
	int added, i;

	sband = FUNC6(il, band);
	if (!sband)
		return 0;

	active_dwell = FUNC4(il, band, n_probes);
	passive_dwell = FUNC7(il, band, vif);

	if (passive_dwell <= active_dwell)
		passive_dwell = active_dwell + 1;

	for (i = 0, added = 0; i < il->scan_request->n_channels; i++) {
		chan = il->scan_request->channels[i];

		if (chan->band != band)
			continue;

		scan_ch->channel = chan->hw_value;

		ch_info = FUNC5(il, band, scan_ch->channel);
		if (!FUNC9(ch_info)) {
			FUNC0("Channel %d is INVALID for this band.\n",
			       scan_ch->channel);
			continue;
		}

		scan_ch->active_dwell = FUNC3(active_dwell);
		scan_ch->passive_dwell = FUNC3(passive_dwell);
		/* If passive , set up for auto-switch
		 *  and use long active_dwell time.
		 */
		if (!is_active || FUNC8(ch_info) ||
		    (chan->flags & IEEE80211_CHAN_NO_IR)) {
			scan_ch->type = 0;	/* passive */
			if (FUNC2(il->ucode_ver) == 1)
				scan_ch->active_dwell =
				    FUNC3(passive_dwell - 1);
		} else {
			scan_ch->type = 1;	/* active */
		}

		/* Set direct probe bits. These may be used both for active
		 * scan channels (probes gets sent right away),
		 * or for passive channels (probes get se sent only after
		 * hearing clear Rx packet).*/
		if (FUNC2(il->ucode_ver) >= 2) {
			if (n_probes)
				scan_ch->type |= FUNC1(n_probes);
		} else {
			/* uCode v1 does not allow setting direct probe bits on
			 * passive channel. */
			if ((scan_ch->type & 1) && n_probes)
				scan_ch->type |= FUNC1(n_probes);
		}

		/* Set txpower levels to defaults */
		scan_ch->tpc.dsp_atten = 110;
		/* scan_pwr_info->tpc.dsp_atten; */

		/*scan_pwr_info->tpc.tx_gain; */
		if (band == NL80211_BAND_5GHZ)
			scan_ch->tpc.tx_gain = ((1 << 5) | (3 << 3)) | 3;
		else {
			scan_ch->tpc.tx_gain = ((1 << 5) | (5 << 3));
			/* NOTE: if we were doing 6Mb OFDM for scans we'd use
			 * power level:
			 * scan_ch->tpc.tx_gain = ((1 << 5) | (2 << 3)) | 3;
			 */
		}

		FUNC0("Scanning %d [%s %d]\n", scan_ch->channel,
		       (scan_ch->type & 1) ? "ACTIVE" : "PASSIVE",
		       (scan_ch->type & 1) ? active_dwell : passive_dwell);

		scan_ch++;
		added++;
	}

	FUNC0("total channels to scan %d\n", added);
	return added;
}