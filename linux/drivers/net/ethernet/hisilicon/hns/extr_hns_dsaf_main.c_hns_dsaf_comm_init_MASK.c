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
typedef  scalar_t__ u32 ;
struct dsaf_device {int /*<<< orphan*/  dsaf_tc_mode; int /*<<< orphan*/  dsaf_en; int /*<<< orphan*/  dsaf_ver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSAF_CFG_0_REG ; 
 int /*<<< orphan*/  DSAF_CFG_CRC_EN_S ; 
 int /*<<< orphan*/  DSAF_CFG_EN_S ; 
 int /*<<< orphan*/  DSAF_CFG_LOCA_ADDR_EN_S ; 
 int /*<<< orphan*/  DSAF_CFG_MIX_MODE_S ; 
 int /*<<< orphan*/  DSAF_CFG_TC_MODE_S ; 
 scalar_t__ DSAF_COMM_CHN ; 
 int /*<<< orphan*/  DSAF_DEFAUTL_QUEUE_NUM_PER_PPE ; 
 int /*<<< orphan*/  DSAF_STP_PORT_TYPE_FORWARD ; 
 int /*<<< orphan*/  DSAF_SW_PORT_TYPE_NON_VLAN ; 
 scalar_t__ FUNC1 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsaf_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsaf_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dsaf_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dsaf_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dsaf_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dsaf_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dsaf_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dsaf_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dsaf_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct dsaf_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct dsaf_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct dsaf_device*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct dsaf_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct dsaf_device *dsaf_dev)
{
	u32 i;
	u32 o_dsaf_cfg;
	bool is_ver1 = FUNC0(dsaf_dev->dsaf_ver);

	o_dsaf_cfg = FUNC1(dsaf_dev, DSAF_CFG_0_REG);
	FUNC2(o_dsaf_cfg, DSAF_CFG_EN_S, dsaf_dev->dsaf_en);
	FUNC2(o_dsaf_cfg, DSAF_CFG_TC_MODE_S, dsaf_dev->dsaf_tc_mode);
	FUNC2(o_dsaf_cfg, DSAF_CFG_CRC_EN_S, 0);
	FUNC2(o_dsaf_cfg, DSAF_CFG_MIX_MODE_S, 0);
	FUNC2(o_dsaf_cfg, DSAF_CFG_LOCA_ADDR_EN_S, 0);
	FUNC3(dsaf_dev, DSAF_CFG_0_REG, o_dsaf_cfg);

	FUNC16(dsaf_dev, 1);
	FUNC18(dsaf_dev, DSAF_STP_PORT_TYPE_FORWARD);

	/* set 22 queue per tx ppe engine, only used in switch mode */
	FUNC15(dsaf_dev, DSAF_DEFAUTL_QUEUE_NUM_PER_PPE);

	/* set promisc def queue id */
	FUNC13(dsaf_dev);

	/* set inner loopback queue id */
	FUNC4(dsaf_dev);

	/* in non switch mode, set all port to access mode */
	FUNC19(dsaf_dev, DSAF_SW_PORT_TYPE_NON_VLAN);

	/*set dsaf pfc  to 0 for parseing rx pause*/
	for (i = 0; i < DSAF_COMM_CHN; i++) {
		FUNC14(dsaf_dev, i, 0);
		FUNC17(dsaf_dev, i, is_ver1, is_ver1);
	}

	/*msk and  clr exception irqs */
	for (i = 0; i < DSAF_COMM_CHN; i++) {
		FUNC12(dsaf_dev, i, 0xfffffffful);
		FUNC6(dsaf_dev, i, 0xfffffffful);
		FUNC8(dsaf_dev, i, 0xfffffffful);

		FUNC11(dsaf_dev, i, 0xfffffffful);
		FUNC5(dsaf_dev, i, 0xfffffffful);
		FUNC7(dsaf_dev, i, 0xfffffffful);
	}
	FUNC10(dsaf_dev, 0xfffffffful);
	FUNC9(dsaf_dev, 0xfffffffful);
}