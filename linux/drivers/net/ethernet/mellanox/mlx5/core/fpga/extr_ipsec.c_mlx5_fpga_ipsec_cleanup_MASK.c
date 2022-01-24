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
struct mlx5_fpga_device {TYPE_1__* ipsec; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  sa_hash; int /*<<< orphan*/  rules_rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_core_dev *mdev)
{
	struct mlx5_fpga_device *fdev = mdev->fpga;

	if (!FUNC2(mdev))
		return;

	FUNC0(&fdev->ipsec->rules_rb);
	FUNC4(&fdev->ipsec->sa_hash);

	FUNC3(fdev->ipsec->conn);
	FUNC1(fdev->ipsec);
	fdev->ipsec = NULL;
}