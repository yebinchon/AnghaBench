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
typedef  int /*<<< orphan*/  version_str ;
typedef  scalar_t__ u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlx5_core_dev {int /*<<< orphan*/  board_id; } ;
struct devlink_info_req {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int DEVLINK_FW_STRING_LEN ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int FUNC0 (struct devlink_info_req*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct devlink_info_req*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct devlink_info_req*,char*,char*) ; 
 int FUNC3 (struct devlink_info_req*,char*,char*) ; 
 struct mlx5_core_dev* FUNC4 (struct devlink*) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (struct mlx5_core_dev*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,int,int) ; 

__attribute__((used)) static int
FUNC10(struct devlink *devlink, struct devlink_info_req *req,
		      struct netlink_ext_ack *extack)
{
	struct mlx5_core_dev *dev = FUNC4(devlink);
	char version_str[DEVLINK_FW_STRING_LEN];
	u32 running_fw, stored_fw;
	int err;

	err = FUNC0(req, DRIVER_NAME);
	if (err)
		return err;

	err = FUNC1(req, "fw.psid", dev->board_id);
	if (err)
		return err;

	err = FUNC8(dev, &running_fw, &stored_fw);
	if (err)
		return err;

	FUNC9(version_str, sizeof(version_str), "%d.%d.%04d",
		 FUNC5(running_fw), FUNC6(running_fw),
		 FUNC7(running_fw));
	err = FUNC2(req, "fw.version", version_str);
	if (err)
		return err;

	/* no pending version, return running (stored) version */
	if (stored_fw == 0)
		stored_fw = running_fw;

	FUNC9(version_str, sizeof(version_str), "%d.%d.%04d",
		 FUNC5(stored_fw), FUNC6(stored_fw),
		 FUNC7(stored_fw));
	err = FUNC3(req, "fw.version", version_str);
	if (err)
		return err;

	return 0;
}