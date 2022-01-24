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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_mr_tcam_erif_list {int /*<<< orphan*/  kvdl_index; } ;
struct mlxsw_sp {int /*<<< orphan*/  afa; } ;
struct mlxsw_afa_block {int dummy; } ;
typedef  enum mlxsw_sp_mr_route_action { ____Placeholder_mlxsw_sp_mr_route_action } mlxsw_sp_mr_route_action ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct mlxsw_afa_block* FUNC0 (int) ; 
#define  MLXSW_SP_MR_ROUTE_ACTION_FORWARD 130 
#define  MLXSW_SP_MR_ROUTE_ACTION_TRAP 129 
#define  MLXSW_SP_MR_ROUTE_ACTION_TRAP_AND_FORWARD 128 
 int /*<<< orphan*/  MLXSW_TRAP_ID_ACL1 ; 
 int /*<<< orphan*/  MLXSW_TRAP_ID_ACL2 ; 
 int FUNC1 (struct mlxsw_afa_block*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_afa_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_afa_block*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_afa_block*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_afa_block*) ; 
 struct mlxsw_afa_block* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_afa_block*) ; 
 int FUNC8 (struct mlxsw_sp*,struct mlxsw_sp_mr_tcam_erif_list*) ; 

__attribute__((used)) static struct mlxsw_afa_block *
FUNC9(struct mlxsw_sp *mlxsw_sp,
				  enum mlxsw_sp_mr_route_action route_action,
				  u16 irif_index, u32 counter_index,
				  u16 min_mtu,
				  struct mlxsw_sp_mr_tcam_erif_list *erif_list)
{
	struct mlxsw_afa_block *afa_block;
	int err;

	afa_block = FUNC6(mlxsw_sp->afa);
	if (!afa_block)
		return FUNC0(-ENOMEM);

	err = FUNC1(afa_block,
						       counter_index);
	if (err)
		goto err;

	switch (route_action) {
	case MLXSW_SP_MR_ROUTE_ACTION_TRAP:
		err = FUNC3(afa_block,
						  MLXSW_TRAP_ID_ACL1);
		if (err)
			goto err;
		break;
	case MLXSW_SP_MR_ROUTE_ACTION_TRAP_AND_FORWARD:
	case MLXSW_SP_MR_ROUTE_ACTION_FORWARD:
		/* If we are about to append a multicast router action, commit
		 * the erif_list.
		 */
		err = FUNC8(mlxsw_sp, erif_list);
		if (err)
			goto err;

		err = FUNC2(afa_block, irif_index,
						      min_mtu, false,
						      erif_list->kvdl_index);
		if (err)
			goto err;

		if (route_action == MLXSW_SP_MR_ROUTE_ACTION_TRAP_AND_FORWARD) {
			err = FUNC4(afa_block,
								      MLXSW_TRAP_ID_ACL2);
			if (err)
				goto err;
		}
		break;
	default:
		err = -EINVAL;
		goto err;
	}

	err = FUNC5(afa_block);
	if (err)
		goto err;
	return afa_block;
err:
	FUNC7(afa_block);
	return FUNC0(err);
}