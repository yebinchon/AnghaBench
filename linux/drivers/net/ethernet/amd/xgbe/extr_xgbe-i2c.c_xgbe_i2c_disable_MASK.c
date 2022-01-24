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
 unsigned int FUNC0 (struct xgbe_prv_data*) ; 
 unsigned int FUNC1 (struct xgbe_prv_data*,int) ; 

__attribute__((used)) static int FUNC2(struct xgbe_prv_data *pdata)
{
	unsigned int ret;

	ret = FUNC1(pdata, false);
	if (ret) {
		/* Disable failed, try an abort */
		ret = FUNC0(pdata);
		if (ret)
			return ret;

		/* Abort succeeded, try to disable again */
		ret = FUNC1(pdata, false);
	}

	return ret;
}