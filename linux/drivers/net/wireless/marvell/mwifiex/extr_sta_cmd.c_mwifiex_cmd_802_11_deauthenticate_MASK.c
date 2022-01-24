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
struct mwifiex_private {int /*<<< orphan*/  adapter; } ;
struct host_cmd_ds_802_11_deauthenticate {void* reason_code; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_deauthenticate deauth; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ HostCmd_CMD_802_11_DEAUTHENTICATE ; 
 scalar_t__ S_DS_GEN ; 
 scalar_t__ WLAN_REASON_DEAUTH_LEAVING ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_private *priv,
					     struct host_cmd_ds_command *cmd,
					     u8 *mac)
{
	struct host_cmd_ds_802_11_deauthenticate *deauth = &cmd->params.deauth;

	cmd->command = FUNC0(HostCmd_CMD_802_11_DEAUTHENTICATE);
	cmd->size = FUNC0(sizeof(struct host_cmd_ds_802_11_deauthenticate)
				+ S_DS_GEN);

	/* Set AP MAC address */
	FUNC1(deauth->mac_addr, mac, ETH_ALEN);

	FUNC2(priv->adapter, CMD, "cmd: Deauth: %pM\n", deauth->mac_addr);

	deauth->reason_code = FUNC0(WLAN_REASON_DEAUTH_LEAVING);

	return 0;
}