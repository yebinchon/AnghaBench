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
typedef  int u32 ;
struct thermal_zone_device {struct adapter* devdata; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_DIAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAM_DEV_DIAG_TMP ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

__attribute__((used)) static int FUNC4(struct thermal_zone_device *tzdev,
				  int *temp)
{
	struct adapter *adap = tzdev->devdata;
	u32 param, val;
	int ret;

	param = (FUNC0(FW_PARAMS_MNEM_DEV) |
		 FUNC1(FW_PARAMS_PARAM_DEV_DIAG) |
		 FUNC2(FW_PARAM_DEV_DIAG_TMP));

	ret = FUNC3(adap, adap->mbox, adap->pf, 0, 1,
			      &param, &val);
	if (ret < 0 || val == 0)
		return -1;

	*temp = val * 1000;
	return 0;
}