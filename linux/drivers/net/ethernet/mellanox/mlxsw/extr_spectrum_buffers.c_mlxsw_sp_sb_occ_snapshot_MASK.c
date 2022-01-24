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
typedef  size_t u8 ;
struct mlxsw_sp_sb_sr_occ_query_cb_ctx {size_t masked_count; size_t local_port_1; } ;
struct mlxsw_sp {TYPE_1__* sb_vals; int /*<<< orphan*/ * ports; } ;
struct mlxsw_core {int dummy; } ;
typedef  int /*<<< orphan*/  cb_ctx ;
struct TYPE_2__ {int pool_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MASKED_COUNT_MAX ; 
 size_t MLXSW_PORT_CPU_PORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SBSR_LEN ; 
 int MLXSW_SP_SB_EG_TC_COUNT ; 
 int MLXSW_SP_SB_ING_TC_COUNT ; 
 int /*<<< orphan*/  bulk_list ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,struct mlxsw_sp_sb_sr_occ_query_cb_ctx*,int) ; 
 struct mlxsw_sp* FUNC5 (struct mlxsw_core*) ; 
 size_t FUNC6 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct mlxsw_core*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC14 (struct mlxsw_sp*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_sb_sr_occ_query_cb ; 
 int /*<<< orphan*/  sbsr ; 

int FUNC15(struct mlxsw_core *mlxsw_core,
			     unsigned int sb_index)
{
	struct mlxsw_sp *mlxsw_sp = FUNC5(mlxsw_core);
	struct mlxsw_sp_sb_sr_occ_query_cb_ctx cb_ctx;
	unsigned long cb_priv;
	FUNC0(bulk_list);
	char *sbsr_pl;
	u8 masked_count;
	u8 local_port_1;
	u8 local_port;
	int i;
	int err;
	int err2;

	sbsr_pl = FUNC3(MLXSW_REG_SBSR_LEN, GFP_KERNEL);
	if (!sbsr_pl)
		return -ENOMEM;

	local_port = MLXSW_PORT_CPU_PORT;
next_batch:
	local_port_1 = local_port;
	masked_count = 0;
	FUNC9(sbsr_pl, false);
	for (i = 0; i < MLXSW_SP_SB_ING_TC_COUNT; i++)
		FUNC10(sbsr_pl, i, 1);
	for (i = 0; i < MLXSW_SP_SB_EG_TC_COUNT; i++)
		FUNC11(sbsr_pl, i, 1);
	for (; local_port < FUNC6(mlxsw_core); local_port++) {
		if (!mlxsw_sp->ports[local_port])
			continue;
		if (local_port != MLXSW_PORT_CPU_PORT) {
			/* Ingress quotas are not supported for the CPU port */
			FUNC8(sbsr_pl,
							     local_port, 1);
		}
		FUNC7(sbsr_pl, local_port, 1);
		for (i = 0; i < mlxsw_sp->sb_vals->pool_count; i++) {
			err = FUNC14(mlxsw_sp, local_port, i,
						       &bulk_list);
			if (err)
				goto out;
		}
		if (++masked_count == MASKED_COUNT_MAX)
			goto do_query;
	}

do_query:
	cb_ctx.masked_count = masked_count;
	cb_ctx.local_port_1 = local_port_1;
	FUNC4(&cb_priv, &cb_ctx, sizeof(cb_ctx));
	err = FUNC13(mlxsw_core, FUNC1(sbsr), sbsr_pl,
				    &bulk_list, mlxsw_sp_sb_sr_occ_query_cb,
				    cb_priv);
	if (err)
		goto out;
	if (local_port < FUNC6(mlxsw_core)) {
		local_port++;
		goto next_batch;
	}

out:
	err2 = FUNC12(&bulk_list);
	if (!err)
		err = err2;
	FUNC2(sbsr_pl);
	return err;
}