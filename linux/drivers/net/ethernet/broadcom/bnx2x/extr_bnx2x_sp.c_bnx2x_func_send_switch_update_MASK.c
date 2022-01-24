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
struct function_update_data {int tx_switch_suspend_change_flg; int sd_vlan_tag_change_flg; int sd_vlan_eth_type_change_flg; int sd_vlan_force_pri_change_flg; int sd_vlan_force_pri_flg; int update_tunn_cfg_flg; int inner_clss_l2gre; int inner_clss_vxlan; int inner_clss_l2geneve; int inner_rss; int /*<<< orphan*/  echo; void* geneve_dst_port; void* vxlan_dst_port; void* sd_vlan_eth_type; void* sd_vlan_tag; scalar_t__ tx_switch_suspend; } ;
struct bnx2x_func_switch_update_params {int vlan_force_prio; int /*<<< orphan*/  geneve_dst_port; int /*<<< orphan*/  vxlan_dst_port; int /*<<< orphan*/  changes; int /*<<< orphan*/  vlan_eth_type; int /*<<< orphan*/  vlan; } ;
struct TYPE_2__ {struct bnx2x_func_switch_update_params switch_update; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {int /*<<< orphan*/  rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_F_UPDATE_SD_VLAN_ETH_TYPE_CHNG ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_SD_VLAN_TAG_CHNG ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_TUNNEL_CFG_CHNG ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GENEVE ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GRE ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_VXLAN ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_TUNNEL_INNER_RSS ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_TX_SWITCH_SUSPEND ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_TX_SWITCH_SUSPEND_CHNG ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_VLAN_FORCE_PRIO_CHNG ; 
 int /*<<< orphan*/  BNX2X_F_UPDATE_VLAN_FORCE_PRIO_FLAG ; 
 int /*<<< orphan*/  NONE_CONNECTION_TYPE ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE ; 
 int /*<<< orphan*/  SWITCH_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct function_update_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC6(struct bnx2x *bp,
					struct bnx2x_func_state_params *params)
{
	struct bnx2x_func_sp_obj *o = params->f_obj;
	struct function_update_data *rdata =
		(struct function_update_data *)o->rdata;
	dma_addr_t data_mapping = o->rdata_mapping;
	struct bnx2x_func_switch_update_params *switch_update_params =
		&params->params.switch_update;

	FUNC4(rdata, 0, sizeof(*rdata));

	/* Fill the ramrod data with provided parameters */
	if (FUNC5(BNX2X_F_UPDATE_TX_SWITCH_SUSPEND_CHNG,
		     &switch_update_params->changes)) {
		rdata->tx_switch_suspend_change_flg = 1;
		rdata->tx_switch_suspend =
			FUNC5(BNX2X_F_UPDATE_TX_SWITCH_SUSPEND,
				 &switch_update_params->changes);
	}

	if (FUNC5(BNX2X_F_UPDATE_SD_VLAN_TAG_CHNG,
		     &switch_update_params->changes)) {
		rdata->sd_vlan_tag_change_flg = 1;
		rdata->sd_vlan_tag =
			FUNC3(switch_update_params->vlan);
	}

	if (FUNC5(BNX2X_F_UPDATE_SD_VLAN_ETH_TYPE_CHNG,
		     &switch_update_params->changes)) {
		rdata->sd_vlan_eth_type_change_flg = 1;
		rdata->sd_vlan_eth_type =
			FUNC3(switch_update_params->vlan_eth_type);
	}

	if (FUNC5(BNX2X_F_UPDATE_VLAN_FORCE_PRIO_CHNG,
		     &switch_update_params->changes)) {
		rdata->sd_vlan_force_pri_change_flg = 1;
		if (FUNC5(BNX2X_F_UPDATE_VLAN_FORCE_PRIO_FLAG,
			     &switch_update_params->changes))
			rdata->sd_vlan_force_pri_flg = 1;
		rdata->sd_vlan_force_pri_flg =
			switch_update_params->vlan_force_prio;
	}

	if (FUNC5(BNX2X_F_UPDATE_TUNNEL_CFG_CHNG,
		     &switch_update_params->changes)) {
		rdata->update_tunn_cfg_flg = 1;
		if (FUNC5(BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GRE,
			     &switch_update_params->changes))
			rdata->inner_clss_l2gre = 1;
		if (FUNC5(BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_VXLAN,
			     &switch_update_params->changes))
			rdata->inner_clss_vxlan = 1;
		if (FUNC5(BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GENEVE,
			     &switch_update_params->changes))
			rdata->inner_clss_l2geneve = 1;
		if (FUNC5(BNX2X_F_UPDATE_TUNNEL_INNER_RSS,
			     &switch_update_params->changes))
			rdata->inner_rss = 1;
		rdata->vxlan_dst_port =
			FUNC3(switch_update_params->vxlan_dst_port);
		rdata->geneve_dst_port =
			FUNC3(switch_update_params->geneve_dst_port);
	}

	rdata->echo = SWITCH_UPDATE;

	/* No need for an explicit memory barrier here as long as we
	 * ensure the ordering of writing to the SPQ element
	 * and updating of the SPQ producer which involves a memory
	 * read. If the memory read is removed we will have to put a
	 * full memory barrier there (inside bnx2x_sp_post()).
	 */
	return FUNC2(bp, RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, 0,
			     FUNC0(data_mapping),
			     FUNC1(data_mapping), NONE_CONNECTION_TYPE);
}