#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_nve_params {size_t type; int /*<<< orphan*/  vni; TYPE_1__* dev; } ;
struct mlxsw_sp_nve_ops {int (* fdb_replay ) (TYPE_1__*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ;int /*<<< orphan*/  (* nve_config ) (struct mlxsw_sp_nve*,TYPE_1__*,struct mlxsw_sp_nve_config*) ;int /*<<< orphan*/  (* can_offload ) (struct mlxsw_sp_nve*,TYPE_1__*,struct netlink_ext_ack*) ;} ;
struct mlxsw_sp_nve_config {int dummy; } ;
struct mlxsw_sp_nve {struct mlxsw_sp_nve_config config; scalar_t__ num_nve_tunnels; struct mlxsw_sp_nve_ops** nve_ops_arr; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {struct mlxsw_sp_nve* nve; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp_nve_config*,struct mlxsw_sp_nve_config*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_nve_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fid*) ; 
 int FUNC4 (struct mlxsw_sp_fid*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*) ; 
 int FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_nve_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_nve*,TYPE_1__*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_nve*,TYPE_1__*,struct mlxsw_sp_nve_config*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

int FUNC10(struct mlxsw_sp *mlxsw_sp, struct mlxsw_sp_fid *fid,
			    struct mlxsw_sp_nve_params *params,
			    struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_nve *nve = mlxsw_sp->nve;
	const struct mlxsw_sp_nve_ops *ops;
	struct mlxsw_sp_nve_config config;
	int err;

	ops = nve->nve_ops_arr[params->type];

	if (!ops->can_offload(nve, params->dev, extack))
		return -EINVAL;

	FUNC2(&config, 0, sizeof(config));
	ops->nve_config(nve, params->dev, &config);
	if (nve->num_nve_tunnels &&
	    FUNC1(&config, &nve->config, sizeof(config))) {
		FUNC0(extack, "Conflicting NVE tunnels configuration");
		return -EINVAL;
	}

	err = FUNC6(mlxsw_sp, &config);
	if (err) {
		FUNC0(extack, "Failed to initialize NVE tunnel");
		return err;
	}

	err = FUNC4(fid, params->type, params->vni,
				   params->dev->ifindex);
	if (err) {
		FUNC0(extack, "Failed to set VNI on FID");
		goto err_fid_vni_set;
	}

	nve->config = config;

	err = ops->fdb_replay(params->dev, params->vni, extack);
	if (err)
		goto err_fdb_replay;

	return 0;

err_fdb_replay:
	FUNC3(fid);
err_fid_vni_set:
	FUNC5(mlxsw_sp);
	return err;
}