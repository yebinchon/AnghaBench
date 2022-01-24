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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CAP_ATOMIC ; 
 int /*<<< orphan*/  MLX5_CAP_DEBUG ; 
 int /*<<< orphan*/  MLX5_CAP_DEV_EVENT ; 
 int /*<<< orphan*/  MLX5_CAP_DEV_MEM ; 
 int /*<<< orphan*/  MLX5_CAP_ESWITCH ; 
 int /*<<< orphan*/  MLX5_CAP_ESWITCH_FLOW_TABLE ; 
 int /*<<< orphan*/  MLX5_CAP_ETHERNET_OFFLOADS ; 
 int /*<<< orphan*/  MLX5_CAP_FLOW_TABLE ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CAP_GENERAL ; 
 int /*<<< orphan*/  MLX5_CAP_IPOIB_ENHANCED_OFFLOADS ; 
 int /*<<< orphan*/  MLX5_CAP_ODP ; 
 int /*<<< orphan*/  MLX5_CAP_QOS ; 
 int /*<<< orphan*/  MLX5_CAP_ROCE ; 
 int /*<<< orphan*/  MLX5_CAP_TLS ; 
 int /*<<< orphan*/  MLX5_CAP_VECTOR_CALC ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  atomic ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  device_memory ; 
 int /*<<< orphan*/  eth_net_offloads ; 
 int /*<<< orphan*/  event_cap ; 
 int /*<<< orphan*/  ipoib_enhanced_offloads ; 
 int /*<<< orphan*/  mcam_reg ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  nic_flow_table ; 
 int /*<<< orphan*/  pcam_reg ; 
 int /*<<< orphan*/  pg ; 
 int /*<<< orphan*/  qcam_reg ; 
 int /*<<< orphan*/  qos ; 
 int /*<<< orphan*/  roce ; 
 int /*<<< orphan*/  tls ; 
 int /*<<< orphan*/  vector_calc ; 
 int /*<<< orphan*/  vport_group_manager ; 

int FUNC6(struct mlx5_core_dev *dev)
{
	int err;

	err = FUNC2(dev, MLX5_CAP_GENERAL);
	if (err)
		return err;

	if (FUNC0(dev, eth_net_offloads)) {
		err = FUNC2(dev, MLX5_CAP_ETHERNET_OFFLOADS);
		if (err)
			return err;
	}

	if (FUNC0(dev, ipoib_enhanced_offloads)) {
		err = FUNC2(dev, MLX5_CAP_IPOIB_ENHANCED_OFFLOADS);
		if (err)
			return err;
	}

	if (FUNC0(dev, pg)) {
		err = FUNC2(dev, MLX5_CAP_ODP);
		if (err)
			return err;
	}

	if (FUNC0(dev, atomic)) {
		err = FUNC2(dev, MLX5_CAP_ATOMIC);
		if (err)
			return err;
	}

	if (FUNC0(dev, roce)) {
		err = FUNC2(dev, MLX5_CAP_ROCE);
		if (err)
			return err;
	}

	if (FUNC0(dev, nic_flow_table) ||
	    FUNC0(dev, ipoib_enhanced_offloads)) {
		err = FUNC2(dev, MLX5_CAP_FLOW_TABLE);
		if (err)
			return err;
	}

	if (FUNC0(dev, vport_group_manager) &&
	    FUNC1(dev)) {
		err = FUNC2(dev, MLX5_CAP_ESWITCH_FLOW_TABLE);
		if (err)
			return err;
	}

	if (FUNC1(dev)) {
		err = FUNC2(dev, MLX5_CAP_ESWITCH);
		if (err)
			return err;
	}

	if (FUNC0(dev, vector_calc)) {
		err = FUNC2(dev, MLX5_CAP_VECTOR_CALC);
		if (err)
			return err;
	}

	if (FUNC0(dev, qos)) {
		err = FUNC2(dev, MLX5_CAP_QOS);
		if (err)
			return err;
	}

	if (FUNC0(dev, debug))
		FUNC2(dev, MLX5_CAP_DEBUG);

	if (FUNC0(dev, pcam_reg))
		FUNC4(dev);

	if (FUNC0(dev, mcam_reg))
		FUNC3(dev);

	if (FUNC0(dev, qcam_reg))
		FUNC5(dev);

	if (FUNC0(dev, device_memory)) {
		err = FUNC2(dev, MLX5_CAP_DEV_MEM);
		if (err)
			return err;
	}

	if (FUNC0(dev, event_cap)) {
		err = FUNC2(dev, MLX5_CAP_DEV_EVENT);
		if (err)
			return err;
	}

	if (FUNC0(dev, tls)) {
		err = FUNC2(dev, MLX5_CAP_TLS);
		if (err)
			return err;
	}

	return 0;
}