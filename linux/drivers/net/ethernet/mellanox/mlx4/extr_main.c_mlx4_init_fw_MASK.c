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
struct mlx4_mod_stat_cfg {int log_pg_sz_m; scalar_t__ log_pg_sz; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int FUNC0 (struct mlx4_dev*,struct mlx4_mod_stat_cfg*) ; 
 int FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*) ; 

__attribute__((used)) static int FUNC7(struct mlx4_dev *dev)
{
	struct mlx4_mod_stat_cfg   mlx4_cfg;
	int err = 0;

	if (!FUNC4(dev)) {
		err = FUNC1(dev);
		if (err) {
			if (err == -EACCES)
				FUNC3(dev, "non-primary physical function, skipping\n");
			else
				FUNC2(dev, "QUERY_FW command failed, aborting\n");
			return err;
		}

		err = FUNC5(dev);
		if (err) {
			FUNC2(dev, "Failed to start FW, aborting\n");
			return err;
		}

		mlx4_cfg.log_pg_sz_m = 1;
		mlx4_cfg.log_pg_sz = 0;
		err = FUNC0(dev, &mlx4_cfg);
		if (err)
			FUNC6(dev, "Failed to override log_pg_sz parameter\n");
	}

	return err;
}