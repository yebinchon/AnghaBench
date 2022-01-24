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
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_PPOD_EDRAM ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*,unsigned int*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct adapter *adap)
{
	unsigned int param, val;
	int ret;

	/* Driver sends FW_PARAMS_PARAM_DEV_PPOD_EDRAM read command to check
	 * if firmware supports ppod edram feature or not. If firmware
	 * returns 1, then driver can enable this feature by sending
	 * FW_PARAMS_PARAM_DEV_PPOD_EDRAM write command with value 1 to
	 * enable ppod edram feature.
	 */
	param = (FUNC0(FW_PARAMS_MNEM_DEV) |
		FUNC1(FW_PARAMS_PARAM_DEV_PPOD_EDRAM));

	ret = FUNC4(adap, adap->mbox, adap->pf, 0, 1, &param, &val);
	if (ret < 0) {
		FUNC3(adap->pdev_dev,
			 "querying PPOD_EDRAM support failed: %d\n",
			 ret);
		return -1;
	}

	if (val != 1)
		return -1;

	ret = FUNC5(adap, adap->mbox, adap->pf, 0, 1, &param, &val);
	if (ret < 0) {
		FUNC2(adap->pdev_dev,
			"setting PPOD_EDRAM failed: %d\n", ret);
		return -1;
	}
	return 0;
}