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
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif_params {struct net_device* dev; } ;
struct mlxsw_sp_rif {TYPE_1__* ops; } ;
struct mlxsw_sp_port_vlan {struct mlxsw_sp_fid* fid; int /*<<< orphan*/  vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp_fid* (* fid_get ) (struct mlxsw_sp_rif*,struct netlink_ext_ack*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_FORWARDING ; 
 scalar_t__ FUNC0 (struct mlxsw_sp_rif*) ; 
 int FUNC1 (struct mlxsw_sp_rif*) ; 
 int FUNC2 (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_fid*) ; 
 int FUNC5 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_rif* FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_rif_params*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_rif_params*,struct mlxsw_sp_port_vlan*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_fid* FUNC10 (struct mlxsw_sp_rif*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int
FUNC11(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan,
			       struct net_device *l3_dev,
			       struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct mlxsw_sp_rif_params params = {
		.dev = l3_dev,
	};
	u16 vid = mlxsw_sp_port_vlan->vid;
	struct mlxsw_sp_rif *rif;
	struct mlxsw_sp_fid *fid;
	int err;

	FUNC8(&params, mlxsw_sp_port_vlan);
	rif = FUNC7(mlxsw_sp, &params, extack);
	if (FUNC0(rif))
		return FUNC1(rif);

	/* FID was already created, just take a reference */
	fid = rif->ops->fid_get(rif, extack);
	err = FUNC2(fid, mlxsw_sp_port, vid);
	if (err)
		goto err_fid_port_vid_map;

	err = FUNC5(mlxsw_sp_port, vid, false);
	if (err)
		goto err_port_vid_learning_set;

	err = FUNC6(mlxsw_sp_port, vid,
					BR_STATE_FORWARDING);
	if (err)
		goto err_port_vid_stp_set;

	mlxsw_sp_port_vlan->fid = fid;

	return 0;

err_port_vid_stp_set:
	FUNC5(mlxsw_sp_port, vid, true);
err_port_vid_learning_set:
	FUNC3(fid, mlxsw_sp_port, vid);
err_fid_port_vid_map:
	FUNC4(fid);
	FUNC9(rif);
	return err;
}