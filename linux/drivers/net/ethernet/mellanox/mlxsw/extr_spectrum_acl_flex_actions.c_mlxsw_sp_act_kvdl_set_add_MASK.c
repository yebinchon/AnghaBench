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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PEFA_LEN ; 
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pefa ; 

__attribute__((used)) static int FUNC5(void *priv, u32 *p_kvdl_index,
				     char *enc_actions, bool is_first, bool ca)
{
	struct mlxsw_sp *mlxsw_sp = priv;
	char pefa_pl[MLXSW_REG_PEFA_LEN];
	u32 kvdl_index;
	int err;

	/* The first action set of a TCAM entry is stored directly in TCAM,
	 * not KVD linear area.
	 */
	if (is_first)
		return 0;

	err = FUNC3(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET,
				  1, &kvdl_index);
	if (err)
		return err;
	FUNC1(pefa_pl, kvdl_index, ca, enc_actions);
	err = FUNC2(mlxsw_sp->core, FUNC0(pefa), pefa_pl);
	if (err)
		goto err_pefa_write;
	*p_kvdl_index = kvdl_index;
	return 0;

err_pefa_write:
	FUNC4(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET,
			   1, kvdl_index);
	return err;
}