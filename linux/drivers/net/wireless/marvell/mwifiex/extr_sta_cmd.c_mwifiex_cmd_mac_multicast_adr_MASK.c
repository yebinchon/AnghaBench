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
typedef  scalar_t__ u16 ;
struct mwifiex_multicast_list {int num_multicast_addr; int /*<<< orphan*/  mac_list; } ;
struct host_cmd_ds_mac_multicast_adr {int /*<<< orphan*/  mac_list; void* num_of_adrs; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_mac_multicast_adr mc_addr; } ;
struct host_cmd_ds_command {void* command; void* size; TYPE_1__ params; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ HostCmd_CMD_MAC_MULTICAST_ADR ; 
 scalar_t__ S_DS_GEN ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct host_cmd_ds_command *cmd,
			      u16 cmd_action,
			      struct mwifiex_multicast_list *mcast_list)
{
	struct host_cmd_ds_mac_multicast_adr *mcast_addr = &cmd->params.mc_addr;

	cmd->size = FUNC0(sizeof(struct host_cmd_ds_mac_multicast_adr) +
				S_DS_GEN);
	cmd->command = FUNC0(HostCmd_CMD_MAC_MULTICAST_ADR);

	mcast_addr->action = FUNC0(cmd_action);
	mcast_addr->num_of_adrs =
		FUNC0((u16) mcast_list->num_multicast_addr);
	FUNC1(mcast_addr->mac_list, mcast_list->mac_list,
	       mcast_list->num_multicast_addr * ETH_ALEN);

	return 0;
}