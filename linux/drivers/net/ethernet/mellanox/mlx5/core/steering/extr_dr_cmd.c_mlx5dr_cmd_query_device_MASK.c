#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5dr_cmd_caps {int /*<<< orphan*/  roce_min_src_udp; int /*<<< orphan*/  hdr_modify_icm_addr; int /*<<< orphan*/  log_icm_size; int /*<<< orphan*/  tx_sw_owner; void* max_ft_level; void* rx_sw_owner; void* nic_tx_allow_address; void* nic_tx_drop_address; void* nic_rx_drop_address; void* flex_parser_id_icmpv6_dw1; void* flex_parser_id_icmpv6_dw0; void* flex_parser_id_icmp_dw1; void* flex_parser_id_icmp_dw0; void* flex_protocols; void* gvmi; void* eswitch_manager; void* prio_tag_required; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eswitch_manager ; 
 int /*<<< orphan*/  flex_parser_id_icmp_dw0 ; 
 int /*<<< orphan*/  flex_parser_id_icmp_dw1 ; 
 int /*<<< orphan*/  flex_parser_id_icmpv6_dw0 ; 
 int /*<<< orphan*/  flex_parser_id_icmpv6_dw1 ; 
 int /*<<< orphan*/  flex_parser_protocols ; 
 int /*<<< orphan*/  header_modify_sw_icm_start_address ; 
 int /*<<< orphan*/  log_steering_sw_icm_size ; 
 int /*<<< orphan*/  max_ft_level ; 
 scalar_t__ FUNC7 (struct mlx5dr_cmd_caps*) ; 
 scalar_t__ FUNC8 (struct mlx5dr_cmd_caps*) ; 
 int /*<<< orphan*/  prio_tag_required ; 
 int /*<<< orphan*/  r_roce_min_src_udp_port ; 
 int /*<<< orphan*/  sw_owner ; 
 int /*<<< orphan*/  sw_steering_nic_rx_action_drop_icm_address ; 
 int /*<<< orphan*/  sw_steering_nic_tx_action_allow_icm_address ; 
 int /*<<< orphan*/  sw_steering_nic_tx_action_drop_icm_address ; 
 int /*<<< orphan*/  vhca_id ; 

int FUNC9(struct mlx5_core_dev *mdev,
			    struct mlx5dr_cmd_caps *caps)
{
	caps->prio_tag_required	= FUNC5(mdev, prio_tag_required);
	caps->eswitch_manager	= FUNC5(mdev, eswitch_manager);
	caps->gvmi		= FUNC5(mdev, vhca_id);
	caps->flex_protocols	= FUNC5(mdev, flex_parser_protocols);

	if (FUNC7(caps)) {
		caps->flex_parser_id_icmp_dw0 = FUNC5(mdev, flex_parser_id_icmp_dw0);
		caps->flex_parser_id_icmp_dw1 = FUNC5(mdev, flex_parser_id_icmp_dw1);
	}

	if (FUNC8(caps)) {
		caps->flex_parser_id_icmpv6_dw0 =
			FUNC5(mdev, flex_parser_id_icmpv6_dw0);
		caps->flex_parser_id_icmpv6_dw1 =
			FUNC5(mdev, flex_parser_id_icmpv6_dw1);
	}

	caps->nic_rx_drop_address =
		FUNC1(mdev, sw_steering_nic_rx_action_drop_icm_address);
	caps->nic_tx_drop_address =
		FUNC1(mdev, sw_steering_nic_tx_action_drop_icm_address);
	caps->nic_tx_allow_address =
		FUNC1(mdev, sw_steering_nic_tx_action_allow_icm_address);

	caps->rx_sw_owner = FUNC3(mdev, sw_owner);
	caps->max_ft_level = FUNC3(mdev, max_ft_level);

	caps->tx_sw_owner = FUNC4(mdev, sw_owner);

	caps->log_icm_size = FUNC2(mdev, log_steering_sw_icm_size);
	caps->hdr_modify_icm_addr =
		FUNC0(mdev, header_modify_sw_icm_start_address);

	caps->roce_min_src_udp = FUNC6(mdev, r_roce_min_src_udp_port);

	return 0;
}