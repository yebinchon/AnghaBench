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
struct vpd_params {int cclk; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_CCLK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,struct vpd_params*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

int FUNC4(struct adapter *adapter, struct vpd_params *p)
{
	u32 cclk_param, cclk_val;
	int ret;

	/* Grab the raw VPD parameters.
	 */
	ret = FUNC2(adapter, p);
	if (ret)
		return ret;

	/* Ask firmware for the Core Clock since it knows how to translate the
	 * Reference Clock ('V2') VPD field into a Core Clock value ...
	 */
	cclk_param = (FUNC0(FW_PARAMS_MNEM_DEV) |
		      FUNC1(FW_PARAMS_PARAM_DEV_CCLK));
	ret = FUNC3(adapter, adapter->mbox, adapter->pf, 0,
			      1, &cclk_param, &cclk_val);

	if (ret)
		return ret;
	p->cclk = cclk_val;

	return 0;
}