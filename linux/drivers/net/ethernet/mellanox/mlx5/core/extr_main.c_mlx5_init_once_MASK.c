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
struct TYPE_2__ {int devcom; int /*<<< orphan*/  eswitch; } ;
struct mlx5_core_dev {int dm; TYPE_1__ priv; int /*<<< orphan*/  vxlan; int /*<<< orphan*/  geneve; int /*<<< orphan*/  hv_vhca; int /*<<< orphan*/  tracer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*) ; 
 int FUNC8 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int FUNC12 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_core_dev*) ; 
 int FUNC16 (struct mlx5_core_dev*) ; 
 int FUNC17 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx5_core_dev*) ; 
 int FUNC26 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct mlx5_core_dev*) ; 
 int FUNC28 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx5_core_dev*) ; 
 int FUNC30 (struct mlx5_core_dev*) ; 
 int FUNC31 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct mlx5_core_dev*) ; 
 int FUNC33 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC34 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC36(struct mlx5_core_dev *dev)
{
	int err;

	dev->priv.devcom = FUNC8(dev);
	if (FUNC0(dev->priv.devcom))
		FUNC4(dev, "failed to register with devcom (0x%p)\n",
			      dev->priv.devcom);

	err = FUNC31(dev);
	if (err) {
		FUNC4(dev, "query board id failed\n");
		goto err_devcom;
	}

	err = FUNC28(dev);
	if (err) {
		FUNC4(dev, "failed to initialize irq table\n");
		goto err_devcom;
	}

	err = FUNC12(dev);
	if (err) {
		FUNC4(dev, "failed to initialize eq\n");
		goto err_irq_cleanup;
	}

	err = FUNC16(dev);
	if (err) {
		FUNC4(dev, "failed to initialize events\n");
		goto err_eq_cleanup;
	}

	FUNC7(dev);

	FUNC24(dev);

	FUNC23(dev);

	FUNC25(dev);

	FUNC22(dev);

	dev->vxlan = FUNC34(dev);
	dev->geneve = FUNC19(dev);

	err = FUNC26(dev);
	if (err) {
		FUNC4(dev, "Failed to init rate limiting\n");
		goto err_tables_cleanup;
	}

	err = FUNC30(dev);
	if (err) {
		FUNC4(dev, "Failed to init l2 table %d\n", err);
		goto err_rl_cleanup;
	}

	err = FUNC33(dev);
	if (err) {
		FUNC4(dev, "Failed to init sriov %d\n", err);
		goto err_mpfs_cleanup;
	}

	err = FUNC14(dev);
	if (err) {
		FUNC4(dev, "Failed to init eswitch %d\n", err);
		goto err_sriov_cleanup;
	}

	err = FUNC17(dev);
	if (err) {
		FUNC4(dev, "Failed to init fpga device %d\n", err);
		goto err_eswitch_cleanup;
	}

	dev->dm = FUNC10(dev);
	if (FUNC0(dev->dm))
		FUNC5(dev, "Failed to init device memory%d\n", err);

	dev->tracer = FUNC18(dev);
	dev->hv_vhca = FUNC21(dev);

	return 0;

err_eswitch_cleanup:
	FUNC13(dev->priv.eswitch);
err_sriov_cleanup:
	FUNC32(dev);
err_mpfs_cleanup:
	FUNC29(dev);
err_rl_cleanup:
	FUNC3(dev);
err_tables_cleanup:
	FUNC20(dev->geneve);
	FUNC35(dev->vxlan);
	FUNC1(dev);
	FUNC2(dev);
	FUNC6(dev);
	FUNC15(dev);
err_eq_cleanup:
	FUNC11(dev);
err_irq_cleanup:
	FUNC27(dev);
err_devcom:
	FUNC9(dev->priv.devcom);

	return err;
}