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
typedef  int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_core {TYPE_1__* bus_info; } ;
struct devlink_info_req {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MGIR_FW_INFO_PSID_SIZE ; 
 int MLXSW_REG_MGIR_LEN ; 
 int FUNC1 (struct devlink_info_req*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct devlink_info_req*,char*,char*) ; 
 int FUNC3 (struct devlink_info_req*,char*,char*) ; 
 struct mlxsw_core* FUNC4 (struct devlink*) ; 
 int /*<<< orphan*/  mgir ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*,char*,int*,int*,int*) ; 
 int FUNC7 (struct mlxsw_core*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,...) ; 

__attribute__((used)) static int
FUNC9(struct devlink *devlink, struct devlink_info_req *req,
		       struct netlink_ext_ack *extack)
{
	struct mlxsw_core *mlxsw_core = FUNC4(devlink);
	char fw_info_psid[MLXSW_REG_MGIR_FW_INFO_PSID_SIZE];
	u32 hw_rev, fw_major, fw_minor, fw_sub_minor;
	char mgir_pl[MLXSW_REG_MGIR_LEN];
	char buf[32];
	int err;

	err = FUNC1(req,
					   mlxsw_core->bus_info->device_kind);
	if (err)
		return err;

	FUNC5(mgir_pl);
	err = FUNC7(mlxsw_core, FUNC0(mgir), mgir_pl);
	if (err)
		return err;
	FUNC6(mgir_pl, &hw_rev, fw_info_psid, &fw_major,
			      &fw_minor, &fw_sub_minor);

	FUNC8(buf, "%X", hw_rev);
	err = FUNC2(req, "hw.revision", buf);
	if (err)
		return err;

	err = FUNC2(req, "fw.psid", fw_info_psid);
	if (err)
		return err;

	FUNC8(buf, "%d.%d.%d", fw_major, fw_minor, fw_sub_minor);
	err = FUNC3(req, "fw.version", buf);
	if (err)
		return err;

	return 0;
}