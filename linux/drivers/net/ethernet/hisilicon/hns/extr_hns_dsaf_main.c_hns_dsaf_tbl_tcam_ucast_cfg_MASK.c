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
struct dsaf_tbl_tcam_ucast_cfg {int /*<<< orphan*/  tbl_ucast_out_port; int /*<<< orphan*/  tbl_ucast_dvc; int /*<<< orphan*/  tbl_ucast_old_en; int /*<<< orphan*/  tbl_ucast_item_vld; int /*<<< orphan*/  tbl_ucast_mac_discard; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSAF_TBL_TCAM_UCAST_CFG_0_REG ; 
 int /*<<< orphan*/  DSAF_TBL_UCAST_CFG1_DVC_S ; 
 int /*<<< orphan*/  DSAF_TBL_UCAST_CFG1_ITEM_VLD_S ; 
 int /*<<< orphan*/  DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S ; 
 int /*<<< orphan*/  DSAF_TBL_UCAST_CFG1_OLD_EN_S ; 
 int /*<<< orphan*/  DSAF_TBL_UCAST_CFG1_OUT_PORT_M ; 
 int /*<<< orphan*/  DSAF_TBL_UCAST_CFG1_OUT_PORT_S ; 
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsaf_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
	struct dsaf_device *dsaf_dev,
	struct dsaf_tbl_tcam_ucast_cfg *tbl_tcam_ucast)
{
	u32 ucast_cfg1;

	ucast_cfg1 = FUNC0(dsaf_dev, DSAF_TBL_TCAM_UCAST_CFG_0_REG);
	FUNC1(ucast_cfg1, DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S,
		     tbl_tcam_ucast->tbl_ucast_mac_discard);
	FUNC1(ucast_cfg1, DSAF_TBL_UCAST_CFG1_ITEM_VLD_S,
		     tbl_tcam_ucast->tbl_ucast_item_vld);
	FUNC1(ucast_cfg1, DSAF_TBL_UCAST_CFG1_OLD_EN_S,
		     tbl_tcam_ucast->tbl_ucast_old_en);
	FUNC1(ucast_cfg1, DSAF_TBL_UCAST_CFG1_DVC_S,
		     tbl_tcam_ucast->tbl_ucast_dvc);
	FUNC2(ucast_cfg1, DSAF_TBL_UCAST_CFG1_OUT_PORT_M,
		       DSAF_TBL_UCAST_CFG1_OUT_PORT_S,
		       tbl_tcam_ucast->tbl_ucast_out_port);
	FUNC3(dsaf_dev, DSAF_TBL_TCAM_UCAST_CFG_0_REG, ucast_cfg1);
}