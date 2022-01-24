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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_HOST_ACC_CTRL_A ; 
 int /*<<< orphan*/  CIM_HOST_ACC_DATA_A ; 
 int EBUSY ; 
 int HOSTBUSY_F ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(struct adapter *adap, unsigned int addr, unsigned int n,
		unsigned int *valp)
{
	int ret = 0;

	if (FUNC0(adap, CIM_HOST_ACC_CTRL_A) & HOSTBUSY_F)
		return -EBUSY;

	for ( ; !ret && n--; addr += 4) {
		FUNC2(adap, CIM_HOST_ACC_CTRL_A, addr);
		ret = FUNC1(adap, CIM_HOST_ACC_CTRL_A, HOSTBUSY_F,
				      0, 5, 2);
		if (!ret)
			*valp++ = FUNC0(adap, CIM_HOST_ACC_DATA_A);
	}
	return ret;
}