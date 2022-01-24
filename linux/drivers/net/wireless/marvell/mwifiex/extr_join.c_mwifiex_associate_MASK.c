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
struct mwifiex_private {scalar_t__ assoc_rsp_size; TYPE_1__* adapter; } ;
struct mwifiex_bssdescriptor {scalar_t__ bss_mode; int /*<<< orphan*/  disable_11ac; int /*<<< orphan*/  disable_11n; } ;
struct TYPE_2__ {int config_bands; int /*<<< orphan*/  fw_cap_info; } ;

/* Variables and functions */
 int BAND_AAC ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_802_11_ASSOCIATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MWIFIEX_BSS_ROLE_STA ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int FUNC2 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_bssdescriptor*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*) ; 

int FUNC5(struct mwifiex_private *priv,
		      struct mwifiex_bssdescriptor *bss_desc)
{
	/* Return error if the adapter is not STA role or table entry
	 * is not marked as infra.
	 */
	if ((FUNC0(priv) != MWIFIEX_BSS_ROLE_STA) ||
	    (bss_desc->bss_mode != NL80211_IFTYPE_STATION))
		return -1;

	if (FUNC1(priv->adapter->fw_cap_info) &&
	    !bss_desc->disable_11n && !bss_desc->disable_11ac &&
	    priv->adapter->config_bands & BAND_AAC)
		FUNC3(priv);
	else
		FUNC4(priv);

	/* Clear any past association response stored for application
	   retrieval */
	priv->assoc_rsp_size = 0;

	return FUNC2(priv, HostCmd_CMD_802_11_ASSOCIATE,
				HostCmd_ACT_GEN_SET, 0, bss_desc, true);
}