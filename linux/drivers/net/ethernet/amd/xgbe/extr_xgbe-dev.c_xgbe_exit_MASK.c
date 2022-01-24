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
 int FUNC0 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC1(struct xgbe_prv_data *pdata)
{
	int ret;

	/* To guard against possible incorrectly generated interrupts,
	 * issue the software reset twice.
	 */
	ret = FUNC0(pdata);
	if (ret)
		return ret;

	return FUNC0(pdata);
}