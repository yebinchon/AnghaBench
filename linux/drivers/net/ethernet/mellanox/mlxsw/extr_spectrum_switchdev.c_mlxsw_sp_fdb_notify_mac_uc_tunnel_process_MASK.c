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
typedef  union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum switchdev_notifier_type { ____Placeholder_switchdev_notifier_type } switchdev_notifier_type ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef  enum mlxsw_reg_sfn_uc_tunnel_protocol { ____Placeholder_mlxsw_reg_sfn_uc_tunnel_protocol } mlxsw_reg_sfn_uc_tunnel_protocol ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int SWITCHDEV_FDB_ADD_TO_BRIDGE ; 
 int SWITCHDEV_FDB_DEL_TO_BRIDGE ; 
 int FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_fid*,int,struct net_device**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,union mlxsw_sp_l3addr*,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_fid* FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_fid*) ; 
 int FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,union mlxsw_sp_l3addr*) ; 
 int FUNC7 (struct mlxsw_sp*,char*,int /*<<< orphan*/ ,int,union mlxsw_sp_l3addr*,int,int) ; 

__attribute__((used)) static void FUNC8(struct mlxsw_sp *mlxsw_sp,
						      char *sfn_pl,
						      int rec_index,
						      bool adding)
{
	enum mlxsw_reg_sfn_uc_tunnel_protocol sfn_proto;
	enum switchdev_notifier_type type;
	struct net_device *nve_dev;
	union mlxsw_sp_l3addr addr;
	struct mlxsw_sp_fid *fid;
	char mac[ETH_ALEN];
	u16 fid_index, vid;
	__be32 vni;
	u32 uip;
	int err;

	FUNC1(sfn_pl, rec_index, mac, &fid_index,
				       &uip, &sfn_proto);

	fid = FUNC4(mlxsw_sp, fid_index);
	if (!fid)
		goto err_fid_lookup;

	err = FUNC6(mlxsw_sp, uip,
					      (enum mlxsw_sp_l3proto) sfn_proto,
					      &addr);
	if (err)
		goto err_ip_resolve;

	err = FUNC0(mlxsw_sp, fid, adding,
							  &nve_dev, &vid, &vni);
	if (err)
		goto err_fdb_process;

	err = FUNC7(mlxsw_sp, mac, fid_index,
					     (enum mlxsw_sp_l3proto) sfn_proto,
					     &addr, adding, true);
	if (err)
		goto err_fdb_op;

	FUNC3(nve_dev, mac,
					(enum mlxsw_sp_l3proto) sfn_proto,
					&addr, vni, adding);

	type = adding ? SWITCHDEV_FDB_ADD_TO_BRIDGE :
			SWITCHDEV_FDB_DEL_TO_BRIDGE;
	FUNC2(type, mac, vid, nve_dev, adding);

	FUNC5(fid);

	return;

err_fdb_op:
err_fdb_process:
err_ip_resolve:
	FUNC5(fid);
err_fid_lookup:
	/* Remove an FDB entry in case we cannot process it. Otherwise the
	 * device will keep sending the same notification over and over again.
	 */
	FUNC7(mlxsw_sp, mac, fid_index,
				       (enum mlxsw_sp_l3proto) sfn_proto, &addr,
				       false, true);
}