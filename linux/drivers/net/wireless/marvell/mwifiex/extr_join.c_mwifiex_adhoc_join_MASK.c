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
struct TYPE_9__ {scalar_t__ ssid_len; scalar_t__ ssid; } ;
struct TYPE_6__ {scalar_t__ bss_mode; scalar_t__ channel; TYPE_4__ ssid; } ;
struct TYPE_7__ {scalar_t__ band; TYPE_1__ bss_descriptor; } ;
struct mwifiex_private {TYPE_2__ curr_bss_params; TYPE_5__* adapter; } ;
struct TYPE_8__ {scalar_t__ ssid_len; scalar_t__ ssid; } ;
struct mwifiex_bssdescriptor {int /*<<< orphan*/  disable_11ac; int /*<<< orphan*/  disable_11n; TYPE_3__ ssid; } ;
struct TYPE_10__ {int config_bands; int /*<<< orphan*/  fw_cap_info; } ;

/* Variables and functions */
 int BAND_AAC ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_802_11_AD_HOC_JOIN ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_bssdescriptor*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 

int FUNC6(struct mwifiex_private *priv,
		       struct mwifiex_bssdescriptor *bss_desc)
{
	FUNC1(priv->adapter, INFO,
		    "info: adhoc join: curr_bss ssid =%s\n",
		    priv->curr_bss_params.bss_descriptor.ssid.ssid);
	FUNC1(priv->adapter, INFO,
		    "info: adhoc join: curr_bss ssid_len =%u\n",
		    priv->curr_bss_params.bss_descriptor.ssid.ssid_len);
	FUNC1(priv->adapter, INFO, "info: adhoc join: ssid =%s\n",
		    bss_desc->ssid.ssid);
	FUNC1(priv->adapter, INFO, "info: adhoc join: ssid_len =%u\n",
		    bss_desc->ssid.ssid_len);

	/* Check if the requested SSID is already joined */
	if (priv->curr_bss_params.bss_descriptor.ssid.ssid_len &&
	    !FUNC5(&bss_desc->ssid,
			      &priv->curr_bss_params.bss_descriptor.ssid) &&
	    (priv->curr_bss_params.bss_descriptor.bss_mode ==
							NL80211_IFTYPE_ADHOC)) {
		FUNC1(priv->adapter, INFO,
			    "info: ADHOC_J_CMD: new ad-hoc SSID\t"
			    "is the same as current; not attempting to re-join\n");
		return -1;
	}

	if (FUNC0(priv->adapter->fw_cap_info) &&
	    !bss_desc->disable_11n && !bss_desc->disable_11ac &&
	    priv->adapter->config_bands & BAND_AAC)
		FUNC3(priv);
	else
		FUNC4(priv);

	FUNC1(priv->adapter, INFO,
		    "info: curr_bss_params.channel = %d\n",
		    priv->curr_bss_params.bss_descriptor.channel);
	FUNC1(priv->adapter, INFO,
		    "info: curr_bss_params.band = %c\n",
		    priv->curr_bss_params.band);

	return FUNC2(priv, HostCmd_CMD_802_11_AD_HOC_JOIN,
				HostCmd_ACT_GEN_SET, 0, bss_desc, true);
}