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
struct mlx5_core_health {int /*<<< orphan*/  report_work; int /*<<< orphan*/  fatal_report_work; int /*<<< orphan*/  wq_lock; int /*<<< orphan*/  wq; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {int /*<<< orphan*/  device; TYPE_1__ priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_fw_fatal_reporter_err_work ; 
 int /*<<< orphan*/  mlx5_fw_reporter_err_work ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int FUNC10(struct mlx5_core_dev *dev)
{
	struct mlx5_core_health *health;
	char *name;

	FUNC5(dev);

	health = &dev->priv.health;
	name = FUNC4(64, GFP_KERNEL);
	if (!name)
		goto out_err;

	FUNC9(name, "mlx5_health");
	FUNC8(name, FUNC2(dev->device));
	health->wq = FUNC1(name);
	FUNC3(name);
	if (!health->wq)
		goto out_err;
	FUNC7(&health->wq_lock);
	FUNC0(&health->fatal_report_work, mlx5_fw_fatal_reporter_err_work);
	FUNC0(&health->report_work, mlx5_fw_reporter_err_work);

	return 0;

out_err:
	FUNC6(dev);
	return -ENOMEM;
}