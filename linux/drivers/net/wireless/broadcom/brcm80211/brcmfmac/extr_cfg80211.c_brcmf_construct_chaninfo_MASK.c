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
typedef  size_t u32 ;
typedef  int u16 ;
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {size_t n_channels; size_t band; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; int hw_value; int orig_flags; } ;
struct brcmu_chan {int chspec; scalar_t__ band; int bw; int control_ch_num; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_chanspec_list {int /*<<< orphan*/ * element; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* encchspec ) (struct brcmu_chan*) ;int /*<<< orphan*/  (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {TYPE_1__ d11inf; struct brcmf_pub* pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_DCMD_MEDLEN ; 
 scalar_t__ BRCMU_CHAN_BAND_2G ; 
 scalar_t__ BRCMU_CHAN_BAND_5G ; 
#define  BRCMU_CHAN_BW_160 131 
#define  BRCMU_CHAN_BW_20 130 
#define  BRCMU_CHAN_BW_40 129 
#define  BRCMU_CHAN_BW_80 128 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_CHAN_NO_160MHZ ; 
 int IEEE80211_CHAN_NO_80MHZ ; 
 int IEEE80211_CHAN_NO_HT40 ; 
 int IEEE80211_CHAN_NO_IR ; 
 int IEEE80211_CHAN_RADAR ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 size_t WLC_BW_40MHZ_BIT ; 
 size_t WLC_BW_80MHZ_BIT ; 
 size_t WL_CHAN_PASSIVE ; 
 size_t WL_CHAN_RADAR ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int FUNC1 (struct brcmf_if*,char*,size_t*) ; 
 int FUNC2 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC3 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_channel*,struct brcmu_chan*) ; 
 struct wiphy* FUNC5 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmu_chan*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmu_chan*) ; 
 int /*<<< orphan*/  FUNC11 (struct wiphy*,char*,int) ; 

__attribute__((used)) static int FUNC12(struct brcmf_cfg80211_info *cfg,
				    u32 bw_cap[])
{
	struct wiphy *wiphy = FUNC5(cfg);
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_if *ifp = FUNC3(drvr, 0);
	struct ieee80211_supported_band *band;
	struct ieee80211_channel *channel;
	struct brcmf_chanspec_list *list;
	struct brcmu_chan ch;
	int err;
	u8 *pbuf;
	u32 i, j;
	u32 total;
	u32 chaninfo;

	pbuf = FUNC7(BRCMF_DCMD_MEDLEN, GFP_KERNEL);

	if (pbuf == NULL)
		return -ENOMEM;

	list = (struct brcmf_chanspec_list *)pbuf;

	err = FUNC2(ifp, "chanspecs", pbuf,
				       BRCMF_DCMD_MEDLEN);
	if (err) {
		FUNC0(drvr, "get chanspecs error (%d)\n", err);
		goto fail_pbuf;
	}

	band = wiphy->bands[NL80211_BAND_2GHZ];
	if (band)
		for (i = 0; i < band->n_channels; i++)
			band->channels[i].flags = IEEE80211_CHAN_DISABLED;
	band = wiphy->bands[NL80211_BAND_5GHZ];
	if (band)
		for (i = 0; i < band->n_channels; i++)
			band->channels[i].flags = IEEE80211_CHAN_DISABLED;

	total = FUNC8(list->count);
	for (i = 0; i < total; i++) {
		ch.chspec = (u16)FUNC8(list->element[i]);
		cfg->d11inf.decchspec(&ch);

		if (ch.band == BRCMU_CHAN_BAND_2G) {
			band = wiphy->bands[NL80211_BAND_2GHZ];
		} else if (ch.band == BRCMU_CHAN_BAND_5G) {
			band = wiphy->bands[NL80211_BAND_5GHZ];
		} else {
			FUNC0(drvr, "Invalid channel Spec. 0x%x.\n",
				 ch.chspec);
			continue;
		}
		if (!band)
			continue;
		if (!(bw_cap[band->band] & WLC_BW_40MHZ_BIT) &&
		    ch.bw == BRCMU_CHAN_BW_40)
			continue;
		if (!(bw_cap[band->band] & WLC_BW_80MHZ_BIT) &&
		    ch.bw == BRCMU_CHAN_BW_80)
			continue;

		channel = NULL;
		for (j = 0; j < band->n_channels; j++) {
			if (band->channels[j].hw_value == ch.control_ch_num) {
				channel = &band->channels[j];
				break;
			}
		}
		if (!channel) {
			/* It seems firmware supports some channel we never
			 * considered. Something new in IEEE standard?
			 */
			FUNC0(drvr, "Ignoring unexpected firmware channel %d\n",
				 ch.control_ch_num);
			continue;
		}

		if (channel->orig_flags & IEEE80211_CHAN_DISABLED)
			continue;

		/* assuming the chanspecs order is HT20,
		 * HT40 upper, HT40 lower, and VHT80.
		 */
		switch (ch.bw) {
		case BRCMU_CHAN_BW_160:
			channel->flags &= ~IEEE80211_CHAN_NO_160MHZ;
			break;
		case BRCMU_CHAN_BW_80:
			channel->flags &= ~IEEE80211_CHAN_NO_80MHZ;
			break;
		case BRCMU_CHAN_BW_40:
			FUNC4(channel, &ch);
			break;
		default:
			FUNC11(wiphy, "Firmware reported unsupported bandwidth %d\n",
				   ch.bw);
			/* fall through */
		case BRCMU_CHAN_BW_20:
			/* enable the channel and disable other bandwidths
			 * for now as mentioned order assure they are enabled
			 * for subsequent chanspecs.
			 */
			channel->flags = IEEE80211_CHAN_NO_HT40 |
					 IEEE80211_CHAN_NO_80MHZ |
					 IEEE80211_CHAN_NO_160MHZ;
			ch.bw = BRCMU_CHAN_BW_20;
			cfg->d11inf.encchspec(&ch);
			chaninfo = ch.chspec;
			err = FUNC1(ifp, "per_chan_info",
						       &chaninfo);
			if (!err) {
				if (chaninfo & WL_CHAN_RADAR)
					channel->flags |=
						(IEEE80211_CHAN_RADAR |
						 IEEE80211_CHAN_NO_IR);
				if (chaninfo & WL_CHAN_PASSIVE)
					channel->flags |=
						IEEE80211_CHAN_NO_IR;
			}
		}
	}

fail_pbuf:
	FUNC6(pbuf);
	return err;
}