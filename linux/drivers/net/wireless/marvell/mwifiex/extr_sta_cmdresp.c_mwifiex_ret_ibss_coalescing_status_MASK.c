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
typedef  scalar_t__ u8 ;
struct TYPE_5__ {scalar_t__ erp_flags; scalar_t__ beacon_period; int /*<<< orphan*/  mac_address; } ;
struct TYPE_6__ {TYPE_2__ bss_descriptor; } ;
struct mwifiex_private {int /*<<< orphan*/  adhoc_state; TYPE_3__ curr_bss_params; int /*<<< orphan*/  adapter; } ;
struct host_cmd_ds_802_11_ibss_status {int /*<<< orphan*/  use_g_rate_protect; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  bssid; int /*<<< orphan*/  action; } ;
struct TYPE_4__ {struct host_cmd_ds_802_11_ibss_status ibss_coalescing; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADHOC_COALESCED ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5(struct mwifiex_private *priv,
					      struct host_cmd_ds_command *resp)
{
	struct host_cmd_ds_802_11_ibss_status *ibss_coal_resp =
					&(resp->params.ibss_coalescing);

	if (FUNC2(ibss_coal_resp->action) == HostCmd_ACT_GEN_SET)
		return 0;

	FUNC4(priv->adapter, INFO,
		    "info: new BSSID %pM\n", ibss_coal_resp->bssid);

	/* If rsp has NULL BSSID, Just return..... No Action */
	if (FUNC1(ibss_coal_resp->bssid)) {
		FUNC4(priv->adapter, FATAL, "new BSSID is NULL\n");
		return 0;
	}

	/* If BSSID is diff, modify current BSS parameters */
	if (!FUNC0(priv->curr_bss_params.bss_descriptor.mac_address, ibss_coal_resp->bssid)) {
		/* BSSID */
		FUNC3(priv->curr_bss_params.bss_descriptor.mac_address,
		       ibss_coal_resp->bssid, ETH_ALEN);

		/* Beacon Interval */
		priv->curr_bss_params.bss_descriptor.beacon_period
			= FUNC2(ibss_coal_resp->beacon_interval);

		/* ERP Information */
		priv->curr_bss_params.bss_descriptor.erp_flags =
			(u8) FUNC2(ibss_coal_resp->use_g_rate_protect);

		priv->adhoc_state = ADHOC_COALESCED;
	}

	return 0;
}