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
struct wiphy {TYPE_2__** bands; } ;
struct cfg80211_ssid {int dummy; } ;
struct cfg80211_scan_request {int n_channels; int n_ssids; TYPE_3__* ssids; TYPE_1__** channels; } ;
struct cfg80211_connect_params {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_5__ {int n_channels; TYPE_1__* channels; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IEEE80211_CHAN_DISABLED ; 
 int NUM_NL80211_BANDS ; 
 int FUNC0 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_scan_request*) ; 
 struct cfg80211_scan_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfg80211_scan_request *
FUNC4(struct wiphy *wiphy, struct cfg80211_connect_params *sme)
{
	struct cfg80211_scan_request *creq = NULL;
	int i, n_channels = FUNC0(wiphy);
	enum nl80211_band band;

	creq = FUNC2(sizeof(*creq) + sizeof(struct cfg80211_ssid) +
		       n_channels * sizeof(void *),
		       GFP_ATOMIC);
	if (!creq)
		return NULL;

	/* SSIDs come after channels */
	creq->ssids = (void *)&creq->channels[n_channels];
	creq->n_channels = n_channels;
	creq->n_ssids = 1;

	/* Scan all available channels */
	i = 0;
	for (band = 0; band < NUM_NL80211_BANDS; band++) {
		int j;

		if (!wiphy->bands[band])
			continue;

		for (j = 0; j < wiphy->bands[band]->n_channels; j++) {
			/* ignore disabled channels */
			if (wiphy->bands[band]->channels[j].flags &
						IEEE80211_CHAN_DISABLED)
				continue;

			creq->channels[i] = &wiphy->bands[band]->channels[j];
			i++;
		}
	}
	if (i) {
		/* Set real number of channels specified in creq->channels[] */
		creq->n_channels = i;

		/* Scan for the SSID we're going to connect to */
		FUNC3(creq->ssids[0].ssid, sme->ssid, sme->ssid_len);
		creq->ssids[0].ssid_len = sme->ssid_len;
	} else {
		/* No channels found... */
		FUNC1(creq);
		creq = NULL;
	}

	return creq;
}