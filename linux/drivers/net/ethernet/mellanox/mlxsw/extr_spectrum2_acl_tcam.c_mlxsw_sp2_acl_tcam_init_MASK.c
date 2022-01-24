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
struct mlxsw_sp_acl_tcam {int max_regions; } ;
struct mlxsw_sp2_acl_tcam {int kvdl_count; scalar_t__ kvdl_index; int /*<<< orphan*/  atcam; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; int /*<<< orphan*/  afa; } ;
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PEFA_LEN ; 
 int MLXSW_REG_PGCR_LEN ; 
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct mlxsw_afa_block*) ; 
 struct mlxsw_afa_block* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  pefa ; 
 int /*<<< orphan*/  pgcr ; 

__attribute__((used)) static int FUNC12(struct mlxsw_sp *mlxsw_sp, void *priv,
				   struct mlxsw_sp_acl_tcam *_tcam)
{
	struct mlxsw_sp2_acl_tcam *tcam = priv;
	struct mlxsw_afa_block *afa_block;
	char pefa_pl[MLXSW_REG_PEFA_LEN];
	char pgcr_pl[MLXSW_REG_PGCR_LEN];
	char *enc_actions;
	int i;
	int err;

	tcam->kvdl_count = _tcam->max_regions;
	err = FUNC10(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET,
				  tcam->kvdl_count, &tcam->kvdl_index);
	if (err)
		return err;

	/* Create flex action block, set default action (continue)
	 * but don't commit. We need just the current set encoding
	 * to be written using PEFA register to all indexes for all regions.
	 */
	afa_block = FUNC3(mlxsw_sp->afa);
	if (!afa_block) {
		err = -ENOMEM;
		goto err_afa_block;
	}
	err = FUNC2(afa_block);
	if (FUNC1(err))
		goto err_afa_block_continue;
	enc_actions = FUNC4(afa_block);

	for (i = 0; i < tcam->kvdl_count; i++) {
		FUNC6(pefa_pl, tcam->kvdl_index + i,
				    true, enc_actions);
		err = FUNC8(mlxsw_sp->core, FUNC0(pefa), pefa_pl);
		if (err)
			goto err_pefa_write;
	}
	FUNC7(pgcr_pl, tcam->kvdl_index);
	err = FUNC8(mlxsw_sp->core, FUNC0(pgcr), pgcr_pl);
	if (err)
		goto err_pgcr_write;

	err = FUNC9(mlxsw_sp, &tcam->atcam);
	if (err)
		goto err_atcam_init;

	FUNC5(afa_block);
	return 0;

err_atcam_init:
err_pgcr_write:
err_pefa_write:
err_afa_block_continue:
	FUNC5(afa_block);
err_afa_block:
	FUNC11(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET,
			   tcam->kvdl_count, tcam->kvdl_index);
	return err;
}