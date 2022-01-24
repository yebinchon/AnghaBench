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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EN ; 
 int /*<<< orphan*/  IC_ENABLE ; 
 int /*<<< orphan*/  IC_ENABLE_STATUS ; 
 unsigned int XGBE_DISABLE_COUNT ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct xgbe_prv_data *pdata, bool enable)
{
	unsigned int wait = XGBE_DISABLE_COUNT;
	unsigned int mode = enable ? 1 : 0;

	while (wait--) {
		FUNC1(pdata, IC_ENABLE, EN, mode);
		if (FUNC0(pdata, IC_ENABLE_STATUS, EN) == mode)
			return 0;

		FUNC2(100, 110);
	}

	return -EBUSY;
}