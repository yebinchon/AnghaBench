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
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  MLXSW_AFA_VIRFWD_CODE ; 
 int /*<<< orphan*/  MLXSW_AFA_VIRFWD_FID_CMD_SET ; 
 int /*<<< orphan*/  MLXSW_AFA_VIRFWD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (struct mlxsw_afa_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct mlxsw_afa_block *block, u16 fid,
				   struct netlink_ext_ack *extack)
{
	char *act = FUNC3(block,
						  MLXSW_AFA_VIRFWD_CODE,
						  MLXSW_AFA_VIRFWD_SIZE);
	if (FUNC0(act)) {
		FUNC1(extack, "Cannot append fid_set action");
		return FUNC2(act);
	}
	FUNC4(act, MLXSW_AFA_VIRFWD_FID_CMD_SET, fid);
	return 0;
}