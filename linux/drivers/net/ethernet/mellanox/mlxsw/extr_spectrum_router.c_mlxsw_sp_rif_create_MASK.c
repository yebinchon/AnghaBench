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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_vr {int /*<<< orphan*/  rif_count; int /*<<< orphan*/ * mr_table; int /*<<< orphan*/  id; } ;
struct mlxsw_sp_rif_params {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp_rif_ops {int (* configure ) (struct mlxsw_sp_rif*) ;int /*<<< orphan*/  (* deconfigure ) (struct mlxsw_sp_rif*) ;int /*<<< orphan*/  (* setup ) (struct mlxsw_sp_rif*,struct mlxsw_sp_rif_params const*) ;struct mlxsw_sp_vr* (* fid_get ) (struct mlxsw_sp_rif*,struct netlink_ext_ack*) ;int /*<<< orphan*/  rif_size; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  dev; struct mlxsw_sp_vr* fid; struct mlxsw_sp_rif_ops const* ops; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {int /*<<< orphan*/  rif_count; int /*<<< orphan*/ * mr_table; int /*<<< orphan*/  id; } ;
struct mlxsw_sp {TYPE_1__* router; struct mlxsw_sp_rif_ops** rif_ops_arr; } ;
typedef  enum mlxsw_sp_rif_type { ____Placeholder_mlxsw_sp_rif_type } mlxsw_sp_rif_type ;
struct TYPE_2__ {struct mlxsw_sp_rif** rifs; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_rif* FUNC0 (struct mlxsw_sp_vr*) ; 
 struct mlxsw_sp_rif* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_vr*) ; 
 int MLXSW_SP_L3_PROTO_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct netlink_ext_ack*,char*) ; 
 int FUNC4 (struct mlxsw_sp_vr*) ; 
 int /*<<< orphan*/  RT_TABLE_MAIN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_rif*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp_vr*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_rif* FUNC13 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlxsw_sp_rif*) ; 
 int FUNC15 (struct mlxsw_sp*,size_t*) ; 
 struct mlxsw_sp_vr* FUNC16 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlxsw_sp*,struct mlxsw_sp_vr*) ; 
 struct mlxsw_sp_vr* FUNC18 (struct mlxsw_sp_rif*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlxsw_sp_rif*,struct mlxsw_sp_rif_params const*) ; 
 int FUNC20 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlxsw_sp_rif*) ; 

__attribute__((used)) static struct mlxsw_sp_rif *
FUNC22(struct mlxsw_sp *mlxsw_sp,
		    const struct mlxsw_sp_rif_params *params,
		    struct netlink_ext_ack *extack)
{
	u32 tb_id = FUNC8(params->dev);
	const struct mlxsw_sp_rif_ops *ops;
	struct mlxsw_sp_fid *fid = NULL;
	enum mlxsw_sp_rif_type type;
	struct mlxsw_sp_rif *rif;
	struct mlxsw_sp_vr *vr;
	u16 rif_index;
	int i, err;

	type = FUNC9(mlxsw_sp, params->dev);
	ops = mlxsw_sp->rif_ops_arr[type];

	vr = FUNC16(mlxsw_sp, tb_id ? : RT_TABLE_MAIN, extack);
	if (FUNC2(vr))
		return FUNC0(vr);
	vr->rif_count++;

	err = FUNC15(mlxsw_sp, &rif_index);
	if (err) {
		FUNC3(extack, "Exceeded number of supported router interfaces");
		goto err_rif_index_alloc;
	}

	rif = FUNC13(ops->rif_size, rif_index, vr->id, params->dev);
	if (!rif) {
		err = -ENOMEM;
		goto err_rif_alloc;
	}
	FUNC5(rif->dev);
	mlxsw_sp->router->rifs[rif_index] = rif;
	rif->mlxsw_sp = mlxsw_sp;
	rif->ops = ops;

	if (ops->fid_get) {
		fid = ops->fid_get(rif, extack);
		if (FUNC2(fid)) {
			err = FUNC4(fid);
			goto err_fid_get;
		}
		rif->fid = fid;
	}

	if (ops->setup)
		ops->setup(rif, params);

	err = ops->configure(rif);
	if (err)
		goto err_configure;

	for (i = 0; i < MLXSW_SP_L3_PROTO_MAX; i++) {
		err = FUNC11(vr->mr_table[i], rif);
		if (err)
			goto err_mr_rif_add;
	}

	FUNC14(rif);

	return rif;

err_mr_rif_add:
	for (i--; i >= 0; i--)
		FUNC12(vr->mr_table[i], rif);
	ops->deconfigure(rif);
err_configure:
	if (fid)
		FUNC10(fid);
err_fid_get:
	mlxsw_sp->router->rifs[rif_index] = NULL;
	FUNC6(rif->dev);
	FUNC7(rif);
err_rif_alloc:
err_rif_index_alloc:
	vr->rif_count--;
	FUNC17(mlxsw_sp, vr);
	return FUNC1(err);
}