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
struct rcb_common_cb {TYPE_1__* dsaf_dev; int /*<<< orphan*/  desc_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  dsaf_ver; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int HNS_RCB_COMMON_ENDIAN ; 
 int /*<<< orphan*/  HNS_RCB_DEF_COALESCED_USECS ; 
 int /*<<< orphan*/  HNS_RCB_DEF_RX_COALESCED_FRAMES ; 
 int /*<<< orphan*/  HNS_RCB_DEF_TX_COALESCED_FRAMES ; 
 int HNS_TSO_MODE_8BD_32K ; 
 int /*<<< orphan*/  RCBV2_COM_CFG_TSO_MODE_REG ; 
 int /*<<< orphan*/  RCBV2_COM_CFG_USER_REG ; 
 int /*<<< orphan*/  RCB_COM_CFG_ENDIAN_REG ; 
 int /*<<< orphan*/  RCB_COM_CFG_FA_B ; 
 int /*<<< orphan*/  RCB_COM_CFG_FA_REG ; 
 int /*<<< orphan*/  RCB_COM_CFG_FNA_B ; 
 int /*<<< orphan*/  RCB_COM_CFG_FNA_REG ; 
 int /*<<< orphan*/  RCB_COM_CFG_INIT_FLAG_REG ; 
 int /*<<< orphan*/  RCB_COM_TSO_MODE_B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct rcb_common_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rcb_common_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rcb_common_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rcb_common_cb*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rcb_common_cb*) ; 
 int /*<<< orphan*/  FUNC8 (struct rcb_common_cb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rcb_common_cb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rcb_common_cb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rcb_common_cb*,int,int /*<<< orphan*/ ) ; 

int FUNC12(struct rcb_common_cb *rcb_common)
{
	u32 reg_val;
	int i;
	int port_num = FUNC7(rcb_common);

	FUNC6(rcb_common, 0);

	reg_val = FUNC3(rcb_common, RCB_COM_CFG_INIT_FLAG_REG);
	if (0x1 != (reg_val & 0x1)) {
		FUNC2(rcb_common->dsaf_dev->dev,
			"RCB_COM_CFG_INIT_FLAG_REG reg = 0x%x\n", reg_val);
		return -EBUSY;
	}

	for (i = 0; i < port_num; i++) {
		FUNC8(rcb_common, i, rcb_common->desc_num);
		FUNC10(
			rcb_common, i, HNS_RCB_DEF_RX_COALESCED_FRAMES);
		if (!FUNC0(rcb_common->dsaf_dev->dsaf_ver) &&
		    !FUNC1(rcb_common->dsaf_dev))
			FUNC11(
				rcb_common, i, HNS_RCB_DEF_TX_COALESCED_FRAMES);
		FUNC9(
			rcb_common, i, HNS_RCB_DEF_COALESCED_USECS);
	}

	FUNC5(rcb_common, RCB_COM_CFG_ENDIAN_REG,
		       HNS_RCB_COMMON_ENDIAN);

	if (FUNC0(rcb_common->dsaf_dev->dsaf_ver)) {
		FUNC5(rcb_common, RCB_COM_CFG_FNA_REG, 0x0);
		FUNC5(rcb_common, RCB_COM_CFG_FA_REG, 0x1);
	} else {
		FUNC4(rcb_common, RCBV2_COM_CFG_USER_REG,
				 RCB_COM_CFG_FNA_B, false);
		FUNC4(rcb_common, RCBV2_COM_CFG_USER_REG,
				 RCB_COM_CFG_FA_B, true);
		FUNC4(rcb_common, RCBV2_COM_CFG_TSO_MODE_REG,
				 RCB_COM_TSO_MODE_B, HNS_TSO_MODE_8BD_32K);
	}

	return 0;
}