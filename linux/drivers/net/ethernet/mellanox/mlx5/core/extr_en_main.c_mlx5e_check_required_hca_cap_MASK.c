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
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_ft_level; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ; 
 int /*<<< orphan*/  cq_moderation ; 
 int /*<<< orphan*/  csum_cap ; 
 int /*<<< orphan*/  eth_net_offloads ; 
 TYPE_1__ flow_table_properties_nic_receive ; 
 int /*<<< orphan*/  max_lso_cap ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  nic_flow_table ; 
 int /*<<< orphan*/  port_type ; 
 int /*<<< orphan*/  rss_ind_tbl_cap ; 
 int /*<<< orphan*/  self_lb_en_modifiable ; 
 int /*<<< orphan*/  vlan_cap ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *mdev)
{
	if (FUNC2(mdev, port_type) != MLX5_CAP_PORT_TYPE_ETH)
		return -EOPNOTSUPP;
	if (!FUNC2(mdev, eth_net_offloads) ||
	    !FUNC2(mdev, nic_flow_table) ||
	    !FUNC0(mdev, csum_cap) ||
	    !FUNC0(mdev, max_lso_cap) ||
	    !FUNC0(mdev, vlan_cap) ||
	    !FUNC0(mdev, rss_ind_tbl_cap) ||
	    FUNC1(mdev,
			       flow_table_properties_nic_receive.max_ft_level)
			       < 3) {
		FUNC3(mdev,
			       "Not creating net device, some required device capabilities are missing\n");
		return -EOPNOTSUPP;
	}
	if (!FUNC0(mdev, self_lb_en_modifiable))
		FUNC3(mdev, "Self loop back prevention is not supported\n");
	if (!FUNC2(mdev, cq_moderation))
		FUNC3(mdev, "CQ moderation is not supported\n");

	return 0;
}