#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int vlan_id_msk; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  dst_mac; int /*<<< orphan*/  dst_mac_msk; } ;
struct mlx4_spec_list {int /*<<< orphan*/  list; TYPE_4__ eth; int /*<<< orphan*/  id; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  vlan_tci; } ;
struct TYPE_5__ {int vlan_tci; } ;
struct TYPE_7__ {int flow_type; TYPE_2__ h_ext; TYPE_1__ m_ext; } ;
struct ethtool_rxnfc {TYPE_3__ fs; } ;
typedef  unsigned char __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int FLOW_EXT ; 
 int MLX4_MAC_MASK ; 
 int /*<<< orphan*/  MLX4_NET_TRANS_RULE_ID_ETH ; 
 int /*<<< orphan*/  VLAN_VID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ethtool_rxnfc *cmd,
					struct list_head *rule_list_h,
					struct mlx4_spec_list *spec_l2,
					unsigned char *mac)
{
	int err = 0;
	__be64 mac_msk = FUNC1(MLX4_MAC_MASK << 16);

	spec_l2->id = MLX4_NET_TRANS_RULE_ID_ETH;
	FUNC3(spec_l2->eth.dst_mac_msk, &mac_msk, ETH_ALEN);
	FUNC3(spec_l2->eth.dst_mac, mac, ETH_ALEN);

	if ((cmd->fs.flow_type & FLOW_EXT) &&
	    (cmd->fs.m_ext.vlan_tci & FUNC0(VLAN_VID_MASK))) {
		spec_l2->eth.vlan_id = cmd->fs.h_ext.vlan_tci;
		spec_l2->eth.vlan_id_msk = FUNC0(VLAN_VID_MASK);
	}

	FUNC2(&spec_l2->list, rule_list_h);

	return err;
}