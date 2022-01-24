#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  key; } ;
struct TYPE_7__ {TYPE_2__* uar; int /*<<< orphan*/  pdn; TYPE_4__ mkey; } ;
struct mlx5_fpga_device {int /*<<< orphan*/  mdev; TYPE_1__ conn_res; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fpga_device*,char*,int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC11(struct mlx5_fpga_device *fdev)
{
	int err;

	err = FUNC9(fdev->mdev);
	if (err) {
		FUNC6(fdev, "Failed to enable RoCE: %d\n", err);
		goto out;
	}

	fdev->conn_res.uar = FUNC7(fdev->mdev);
	if (FUNC0(fdev->conn_res.uar)) {
		err = FUNC1(fdev->conn_res.uar);
		FUNC6(fdev, "get_uars_page failed, %d\n", err);
		goto err_roce;
	}
	FUNC5(fdev, "Allocated UAR index %u\n",
		      fdev->conn_res.uar->index);

	err = FUNC2(fdev->mdev, &fdev->conn_res.pdn);
	if (err) {
		FUNC6(fdev, "alloc pd failed, %d\n", err);
		goto err_uar;
	}
	FUNC5(fdev, "Allocated PD %u\n", fdev->conn_res.pdn);

	err = FUNC4(fdev->mdev, fdev->conn_res.pdn,
					 &fdev->conn_res.mkey);
	if (err) {
		FUNC6(fdev, "create mkey failed, %d\n", err);
		goto err_dealloc_pd;
	}
	FUNC5(fdev, "Created mkey 0x%x\n", fdev->conn_res.mkey.key);

	return 0;

err_dealloc_pd:
	FUNC3(fdev->mdev, fdev->conn_res.pdn);
err_uar:
	FUNC10(fdev->mdev, fdev->conn_res.uar);
err_roce:
	FUNC8(fdev->mdev);
out:
	return err;
}