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
struct TYPE_2__ {int /*<<< orphan*/  uar; int /*<<< orphan*/  pdn; int /*<<< orphan*/  mkey; } ;
struct mlx5_fpga_device {int /*<<< orphan*/  mdev; TYPE_1__ conn_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct mlx5_fpga_device *fdev)
{
	FUNC1(fdev->mdev, &fdev->conn_res.mkey);
	FUNC0(fdev->mdev, fdev->conn_res.pdn);
	FUNC3(fdev->mdev, fdev->conn_res.uar);
	FUNC2(fdev->mdev);
}