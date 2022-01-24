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
struct TYPE_2__ {int /*<<< orphan*/  uar; } ;
struct mlx5_core_dev {TYPE_1__ priv; int /*<<< orphan*/  tracer; int /*<<< orphan*/  hv_vhca; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,char*,...) ; 
 int FUNC8 (struct mlx5_core_dev*) ; 
 int FUNC9 (struct mlx5_core_dev*) ; 
 int FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_core_dev*) ; 
 int FUNC14 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct mlx5_core_dev*) ; 
 int FUNC22 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct mlx5_core_dev*) ; 

__attribute__((used)) static int FUNC29(struct mlx5_core_dev *dev)
{
	int err;

	dev->priv.uar = FUNC18(dev);
	if (FUNC0(dev->priv.uar)) {
		FUNC7(dev, "Failed allocating uar, aborting\n");
		err = FUNC1(dev->priv.uar);
		return err;
	}

	FUNC12(dev);
	FUNC24(dev);

	err = FUNC22(dev);
	if (err) {
		FUNC7(dev, "Failed to alloc IRQs\n");
		goto err_irq_table;
	}

	err = FUNC10(dev);
	if (err) {
		FUNC7(dev, "Failed to create EQs\n");
		goto err_eq_table;
	}

	err = FUNC17(dev->tracer);
	if (err) {
		FUNC7(dev, "Failed to init FW tracer\n");
		goto err_fw_tracer;
	}

	FUNC20(dev->hv_vhca);

	err = FUNC14(dev);
	if (err) {
		FUNC7(dev, "fpga device start failed %d\n", err);
		goto err_fpga_start;
	}

	err = FUNC3(dev);
	if (err) {
		FUNC7(dev, "IPSec device start failed %d\n", err);
		goto err_ipsec_start;
	}

	err = FUNC5(dev);
	if (err) {
		FUNC7(dev, "TLS device start failed %d\n", err);
		goto err_tls_start;
	}

	err = FUNC21(dev);
	if (err) {
		FUNC7(dev, "Failed to init flow steering\n");
		goto err_fs;
	}

	err = FUNC8(dev);
	if (err) {
		FUNC7(dev, "Failed to set hca defaults\n");
		goto err_sriov;
	}

	err = FUNC27(dev);
	if (err) {
		FUNC7(dev, "sriov init failed %d\n", err);
		goto err_sriov;
	}

	err = FUNC9(dev);
	if (err) {
		FUNC7(dev, "Failed to init embedded CPU\n");
		goto err_ec;
	}

	return 0;

err_ec:
	FUNC28(dev);
err_sriov:
	FUNC6(dev);
err_fs:
	FUNC4(dev);
err_tls_start:
	FUNC2(dev);
err_ipsec_start:
	FUNC15(dev);
err_fpga_start:
	FUNC19(dev->hv_vhca);
	FUNC16(dev->tracer);
err_fw_tracer:
	FUNC11(dev);
err_eq_table:
	FUNC23(dev);
err_irq_table:
	FUNC25(dev);
	FUNC13(dev);
	FUNC26(dev, dev->priv.uar);
	return err;
}