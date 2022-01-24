#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union drv_info_to_mcp {int dummy; } drv_info_to_mcp ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x {scalar_t__ state; int /*<<< orphan*/  drv_info_mutex; TYPE_3__* slowpath; scalar_t__ drv_info_mng_owner; } ;
struct TYPE_11__ {int /*<<< orphan*/ * versions; } ;
struct TYPE_8__ {int /*<<< orphan*/ * version; } ;
struct TYPE_7__ {int /*<<< orphan*/ * version; } ;
struct TYPE_10__ {TYPE_2__ fcoe_stat; TYPE_1__ iscsi_stat; } ;
struct TYPE_9__ {TYPE_4__ drv_info_to_mcp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_MCP ; 
 scalar_t__ BNX2X_STATE_OPEN ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * DRV_MODULE_VERSION ; 
 size_t DRV_PERS_ETHERNET ; 
 size_t DRV_PERS_FCOE ; 
 size_t DRV_PERS_ISCSI ; 
 int /*<<< orphan*/  DRV_VER_NOT_LOADED ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* func_os_drv_ver ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct bnx2x *bp)
{
	u32 iscsiver = DRV_VER_NOT_LOADED;
	u32 fcoever = DRV_VER_NOT_LOADED;
	u32 ethver = DRV_VER_NOT_LOADED;
	int idx = FUNC0(bp);
	u8 *version;

	if (!FUNC3(bp, func_os_drv_ver))
		return;

	FUNC9(&bp->drv_info_mutex);
	/* Must not proceed when `bnx2x_handle_drv_info_req' is feasible */
	if (bp->drv_info_mng_owner)
		goto out;

	if (bp->state != BNX2X_STATE_OPEN)
		goto out;

	/* Parse ethernet driver version */
	ethver = FUNC7(DRV_MODULE_VERSION, true);
	if (!FUNC1(bp))
		goto out;

	/* Try getting storage driver version via cnic */
	FUNC8(&bp->slowpath->drv_info_to_mcp, 0,
	       sizeof(union drv_info_to_mcp));
	FUNC6(bp);
	version = bp->slowpath->drv_info_to_mcp.iscsi_stat.version;
	iscsiver = FUNC7(version, false);

	FUNC8(&bp->slowpath->drv_info_to_mcp, 0,
	       sizeof(union drv_info_to_mcp));
	FUNC5(bp);
	version = bp->slowpath->drv_info_to_mcp.fcoe_stat.version;
	fcoever = FUNC7(version, false);

out:
	FUNC4(bp, func_os_drv_ver[idx].versions[DRV_PERS_ETHERNET], ethver);
	FUNC4(bp, func_os_drv_ver[idx].versions[DRV_PERS_ISCSI], iscsiver);
	FUNC4(bp, func_os_drv_ver[idx].versions[DRV_PERS_FCOE], fcoever);

	FUNC10(&bp->drv_info_mutex);

	FUNC2(BNX2X_MSG_MCP, "Setting driver version: ETH [%08x] iSCSI [%08x] FCoE [%08x]\n",
	   ethver, iscsiver, fcoever);
}