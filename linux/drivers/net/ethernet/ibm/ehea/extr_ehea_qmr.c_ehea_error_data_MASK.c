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
typedef  int /*<<< orphan*/  u64 ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_DATA_TYPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long H_R_STATE ; 
 unsigned long H_SUCCESS ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u64 FUNC6(struct ehea_adapter *adapter, u64 res_handle,
		    u64 *aer, u64 *aerr)
{
	unsigned long ret;
	u64 *rblock;
	u64 type = 0;

	rblock = (void *)FUNC3(GFP_KERNEL);
	if (!rblock) {
		FUNC4("Cannot allocate rblock memory\n");
		goto out;
	}

	ret = FUNC1(adapter->handle, res_handle, rblock);

	if (ret == H_SUCCESS) {
		type = FUNC0(ERROR_DATA_TYPE, rblock[2]);
		*aer = rblock[6];
		*aerr = rblock[12];
		FUNC5(rblock);
	} else if (ret == H_R_STATE) {
		FUNC4("No error data available: %llX\n", res_handle);
	} else
		FUNC4("Error data could not be fetched: %llX\n", res_handle);

	FUNC2((unsigned long)rblock);
out:
	return type;
}