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
struct TYPE_2__ {int /*<<< orphan*/  portvec; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_PHYFW ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_PHYFW_VERSION ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

int FUNC5(struct adapter *adap, int *phy_fw_ver)
{
	u32 param, val;
	int ret;

	param = (FUNC0(FW_PARAMS_MNEM_DEV) |
		 FUNC1(FW_PARAMS_PARAM_DEV_PHYFW) |
		 FUNC2(adap->params.portvec) |
		 FUNC3(FW_PARAMS_PARAM_DEV_PHYFW_VERSION));
	ret = FUNC4(adap, adap->mbox, adap->pf, 0, 1,
			      &param, &val);
	if (ret < 0)
		return ret;
	*phy_fw_ver = val;
	return 0;
}