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
struct parman_prio {int dummy; } ;
struct parman {int dummy; } ;
struct mlxsw_sp1_mr_tcam_region {int rtar_key_type; struct parman_prio* parman_prios; struct parman* parman; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_reg_rtar_key_type { ____Placeholder_mlxsw_reg_rtar_key_type } mlxsw_reg_rtar_key_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLXSW_SP_MR_ROUTE_PRIO_MAX ; 
 struct parman_prio* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sp1_mr_tcam_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp1_mr_tcam_region*) ; 
 int /*<<< orphan*/  mlxsw_sp1_mr_tcam_region_parman_ops ; 
 struct parman* FUNC3 (int /*<<< orphan*/ *,struct mlxsw_sp1_mr_tcam_region*) ; 
 int /*<<< orphan*/  FUNC4 (struct parman*) ; 
 int /*<<< orphan*/  FUNC5 (struct parman*,struct parman_prio*,int) ; 

__attribute__((used)) static int
FUNC6(struct mlxsw_sp *mlxsw_sp,
			      struct mlxsw_sp1_mr_tcam_region *mr_tcam_region,
			      enum mlxsw_reg_rtar_key_type rtar_key_type)
{
	struct parman_prio *parman_prios;
	struct parman *parman;
	int err;
	int i;

	mr_tcam_region->rtar_key_type = rtar_key_type;
	mr_tcam_region->mlxsw_sp = mlxsw_sp;

	err = FUNC1(mr_tcam_region);
	if (err)
		return err;

	parman = FUNC3(&mlxsw_sp1_mr_tcam_region_parman_ops,
			       mr_tcam_region);
	if (!parman) {
		err = -ENOMEM;
		goto err_parman_create;
	}
	mr_tcam_region->parman = parman;

	parman_prios = FUNC0(MLXSW_SP_MR_ROUTE_PRIO_MAX + 1,
				     sizeof(*parman_prios), GFP_KERNEL);
	if (!parman_prios) {
		err = -ENOMEM;
		goto err_parman_prios_alloc;
	}
	mr_tcam_region->parman_prios = parman_prios;

	for (i = 0; i < MLXSW_SP_MR_ROUTE_PRIO_MAX + 1; i++)
		FUNC5(mr_tcam_region->parman,
				 &mr_tcam_region->parman_prios[i], i);
	return 0;

err_parman_prios_alloc:
	FUNC4(parman);
err_parman_create:
	FUNC2(mr_tcam_region);
	return err;
}