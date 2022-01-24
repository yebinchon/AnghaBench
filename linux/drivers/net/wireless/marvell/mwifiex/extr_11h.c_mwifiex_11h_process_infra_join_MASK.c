#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_7__ {TYPE_1__* wiphy; } ;
struct mwifiex_private {TYPE_2__ wdev; } ;
struct TYPE_8__ {void* len; void* type; } ;
struct mwifiex_ie_types_pwr_capability {scalar_t__ max_pwr; scalar_t__ min_pwr; TYPE_3__ header; } ;
struct TYPE_9__ {void* len; void* type; } ;
struct mwifiex_ie_types_local_pwr_constraint {int /*<<< orphan*/  constraint; int /*<<< orphan*/  chan; TYPE_4__ header; } ;
struct mwifiex_ie_types_header {void* len; void* type; } ;
struct mwifiex_bssdescriptor {int /*<<< orphan*/  local_constraint; int /*<<< orphan*/  channel; scalar_t__ bss_band; } ;
struct ieee80211_supported_band {int n_channels; TYPE_5__* channels; } ;
struct TYPE_10__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_6__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int TLV_TYPE_PASSTHROUGH ; 
 int WLAN_EID_PWR_CAPABILITY ; 
 int WLAN_EID_PWR_CONSTRAINT ; 
 int /*<<< orphan*/  WLAN_EID_SUPPORTED_CHANNELS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 

__attribute__((used)) static void
FUNC3(struct mwifiex_private *priv, u8 **buffer,
			       struct mwifiex_bssdescriptor *bss_desc)
{
	struct mwifiex_ie_types_header *ie_header;
	struct mwifiex_ie_types_pwr_capability *cap;
	struct mwifiex_ie_types_local_pwr_constraint *constraint;
	struct ieee80211_supported_band *sband;
	u8 radio_type;
	int i;

	if (!buffer || !(*buffer))
		return;

	radio_type = FUNC2((u8) bss_desc->bss_band);
	sband = priv->wdev.wiphy->bands[radio_type];

	cap = (struct mwifiex_ie_types_pwr_capability *)*buffer;
	cap->header.type = FUNC0(WLAN_EID_PWR_CAPABILITY);
	cap->header.len = FUNC0(2);
	cap->min_pwr = 0;
	cap->max_pwr = 0;
	*buffer += sizeof(*cap);

	constraint = (struct mwifiex_ie_types_local_pwr_constraint *)*buffer;
	constraint->header.type = FUNC0(WLAN_EID_PWR_CONSTRAINT);
	constraint->header.len = FUNC0(2);
	constraint->chan = bss_desc->channel;
	constraint->constraint = bss_desc->local_constraint;
	*buffer += sizeof(*constraint);

	ie_header = (struct mwifiex_ie_types_header *)*buffer;
	ie_header->type = FUNC0(TLV_TYPE_PASSTHROUGH);
	ie_header->len  = FUNC0(2 * sband->n_channels + 2);
	*buffer += sizeof(*ie_header);
	*(*buffer)++ = WLAN_EID_SUPPORTED_CHANNELS;
	*(*buffer)++ = 2 * sband->n_channels;
	for (i = 0; i < sband->n_channels; i++) {
		*(*buffer)++ = FUNC1(
					sband->channels[i].center_freq);
		*(*buffer)++ = 1; /* one channel in the subband */
	}
}