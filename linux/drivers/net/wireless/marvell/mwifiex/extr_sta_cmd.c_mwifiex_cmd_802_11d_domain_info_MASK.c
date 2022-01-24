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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct TYPE_6__ {void* len; void* type; } ;
struct mwifiex_ietypes_domain_param_set {TYPE_3__ header; int /*<<< orphan*/  triplet; int /*<<< orphan*/  country_code; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_5__ {int no_of_triplet; int /*<<< orphan*/  triplet; int /*<<< orphan*/  country_code; } ;
struct mwifiex_adapter {TYPE_2__ domain_reg; } ;
struct ieee80211_country_ie_triplet {int dummy; } ;
struct host_cmd_ds_802_11d_domain_info {void* action; struct mwifiex_ietypes_domain_param_set domain; } ;
struct TYPE_4__ {struct host_cmd_ds_802_11d_domain_info domain_info; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ HostCmd_ACT_GEN_GET ; 
 int HostCmd_CMD_802_11D_DOMAIN_INFO ; 
 int /*<<< orphan*/  INFO ; 
 int S_DS_GEN ; 
 int WLAN_EID_COUNTRY ; 
 void* FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct mwifiex_private *priv,
					   struct host_cmd_ds_command *cmd,
					   u16 cmd_action)
{
	struct mwifiex_adapter *adapter = priv->adapter;
	struct host_cmd_ds_802_11d_domain_info *domain_info =
		&cmd->params.domain_info;
	struct mwifiex_ietypes_domain_param_set *domain =
		&domain_info->domain;
	u8 no_of_triplet = adapter->domain_reg.no_of_triplet;

	FUNC3(adapter, INFO,
		    "info: 11D: no_of_triplet=0x%x\n", no_of_triplet);

	cmd->command = FUNC0(HostCmd_CMD_802_11D_DOMAIN_INFO);
	domain_info->action = FUNC0(cmd_action);
	if (cmd_action == HostCmd_ACT_GEN_GET) {
		cmd->size = FUNC0(sizeof(domain_info->action) + S_DS_GEN);
		return 0;
	}

	/* Set domain info fields */
	domain->header.type = FUNC0(WLAN_EID_COUNTRY);
	FUNC2(domain->country_code, adapter->domain_reg.country_code,
	       sizeof(domain->country_code));

	domain->header.len =
		FUNC0((no_of_triplet *
			     sizeof(struct ieee80211_country_ie_triplet))
			    + sizeof(domain->country_code));

	if (no_of_triplet) {
		FUNC2(domain->triplet, adapter->domain_reg.triplet,
		       no_of_triplet * sizeof(struct
					      ieee80211_country_ie_triplet));

		cmd->size = FUNC0(sizeof(domain_info->action) +
					FUNC1(domain->header.len) +
					sizeof(struct mwifiex_ie_types_header)
					+ S_DS_GEN);
	} else {
		cmd->size = FUNC0(sizeof(domain_info->action) + S_DS_GEN);
	}

	return 0;
}