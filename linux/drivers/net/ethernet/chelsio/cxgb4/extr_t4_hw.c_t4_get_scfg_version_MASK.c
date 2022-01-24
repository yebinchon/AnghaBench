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
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_SCFGREV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

int FUNC3(struct adapter *adapter, u32 *vers)
{
	u32 scfgrev_param;
	int ret;

	scfgrev_param = (FUNC0(FW_PARAMS_MNEM_DEV) |
			 FUNC1(FW_PARAMS_PARAM_DEV_SCFGREV));
	ret = FUNC2(adapter, adapter->mbox, adapter->pf, 0,
			      1, &scfgrev_param, vers);
	if (ret)
		*vers = 0;
	return ret;
}