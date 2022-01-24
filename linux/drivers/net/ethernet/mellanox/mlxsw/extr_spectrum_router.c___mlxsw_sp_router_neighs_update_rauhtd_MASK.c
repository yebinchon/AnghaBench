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
struct mlxsw_sp {TYPE_1__* bus_info; int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_rauhtd_type { ____Placeholder_mlxsw_reg_rauhtd_type } mlxsw_reg_rauhtd_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  rauhtd ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct mlxsw_sp *mlxsw_sp,
				       char *rauhtd_pl,
				       enum mlxsw_reg_rauhtd_type type)
{
	int i, num_rec;
	int err;

	/* Make sure the neighbour's netdev isn't removed in the
	 * process.
	 */
	FUNC7();
	do {
		FUNC4(rauhtd_pl, type);
		err = FUNC2(mlxsw_sp->core, FUNC0(rauhtd),
				      rauhtd_pl);
		if (err) {
			FUNC1(mlxsw_sp->bus_info->dev, "Failed to dump neighbour table\n");
			break;
		}
		num_rec = FUNC3(rauhtd_pl);
		for (i = 0; i < num_rec; i++)
			FUNC5(mlxsw_sp, rauhtd_pl,
							  i);
	} while (FUNC6(rauhtd_pl));
	FUNC8();

	return err;
}