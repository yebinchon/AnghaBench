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
struct wil6210_priv {int dummy; } ;
struct cfg80211_connect_params {char* bssid; char* prev_bssid; char* pbss; int /*<<< orphan*/  crypto; scalar_t__ privacy; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  ssid_len; scalar_t__ ssid; TYPE_1__* channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  center_freq; int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct wil6210_priv *wil,
				     struct cfg80211_connect_params *sme)
{
	FUNC2(wil, "Connecting to:\n");
	if (sme->channel) {
		FUNC2(wil, "  Channel: %d freq %d\n",
			 sme->channel->hw_value, sme->channel->center_freq);
	}
	if (sme->bssid)
		FUNC2(wil, "  BSSID: %pM\n", sme->bssid);
	if (sme->ssid)
		FUNC0(KERN_INFO, "  SSID: ", DUMP_PREFIX_OFFSET,
			       16, 1, sme->ssid, sme->ssid_len, true);
	if (sme->prev_bssid)
		FUNC2(wil, "  Previous BSSID=%pM\n", sme->prev_bssid);
	FUNC2(wil, "  Auth Type: %s\n",
		 FUNC1(sme->auth_type));
	FUNC2(wil, "  Privacy: %s\n", sme->privacy ? "secure" : "open");
	FUNC2(wil, "  PBSS: %d\n", sme->pbss);
	FUNC3(wil, &sme->crypto);
}