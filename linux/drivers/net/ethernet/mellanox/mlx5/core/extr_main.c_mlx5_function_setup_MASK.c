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
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_INIT_TIMEOUT_MILI ; 
 int /*<<< orphan*/  FW_INIT_WARN_MESSAGE_INTERVAL ; 
 int /*<<< orphan*/  FW_PRE_INIT_TIMEOUT_MILI ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct mlx5_core_dev*) ; 
 int FUNC11 (struct mlx5_core_dev*) ; 
 int FUNC12 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_core_dev*) ; 
 int FUNC14 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct mlx5_core_dev*) ; 
 int FUNC20 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  sw_owner_id ; 
 int FUNC21 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct mlx5_core_dev *dev, bool boot)
{
	int err;

	FUNC9(dev, "firmware version: %d.%d.%d\n", FUNC0(dev),
		       FUNC1(dev), FUNC2(dev));

	/* Only PFs hold the relevant PCIe information for this query */
	if (FUNC10(dev))
		FUNC18(dev->pdev);

	/* wait for firmware to accept initialization segments configurations
	 */
	err = FUNC21(dev, FW_PRE_INIT_TIMEOUT_MILI, FW_INIT_WARN_MESSAGE_INTERVAL);
	if (err) {
		FUNC8(dev, "Firmware over %d MS in pre-initializing state, aborting\n",
			      FW_PRE_INIT_TIMEOUT_MILI);
		return err;
	}

	err = FUNC4(dev);
	if (err) {
		FUNC8(dev, "Failed initializing command interface, aborting\n");
		return err;
	}

	err = FUNC21(dev, FW_INIT_TIMEOUT_MILI, 0);
	if (err) {
		FUNC8(dev, "Firmware over %d MS in initializing state, aborting\n",
			      FW_INIT_TIMEOUT_MILI);
		goto err_cmd_cleanup;
	}

	err = FUNC7(dev, 0);
	if (err) {
		FUNC8(dev, "enable hca failed\n");
		goto err_cmd_cleanup;
	}

	err = FUNC11(dev);
	if (err) {
		FUNC8(dev, "failed to set issi\n");
		goto err_disable_hca;
	}

	err = FUNC14(dev, 1);
	if (err) {
		FUNC8(dev, "failed to allocate boot pages\n");
		goto err_disable_hca;
	}

	err = FUNC20(dev);
	if (err) {
		FUNC8(dev, "set_hca_ctrl failed\n");
		goto reclaim_boot_pages;
	}

	err = FUNC19(dev);
	if (err) {
		FUNC8(dev, "set_hca_cap failed\n");
		goto reclaim_boot_pages;
	}

	err = FUNC14(dev, 0);
	if (err) {
		FUNC8(dev, "failed to allocate init pages\n");
		goto reclaim_boot_pages;
	}

	err = FUNC5(dev, sw_owner_id);
	if (err) {
		FUNC8(dev, "init hca failed\n");
		goto reclaim_boot_pages;
	}

	FUNC15(dev);

	FUNC16(dev);

	err = FUNC12(dev);
	if (err) {
		FUNC8(dev, "query hca failed\n");
		goto stop_health;
	}

	return 0;

stop_health:
	FUNC17(dev, boot);
reclaim_boot_pages:
	FUNC13(dev);
err_disable_hca:
	FUNC6(dev, 0);
err_cmd_cleanup:
	FUNC3(dev);

	return err;
}