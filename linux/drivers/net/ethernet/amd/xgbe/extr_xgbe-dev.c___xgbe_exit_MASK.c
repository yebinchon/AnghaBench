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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMA_MR ; 
 int EBUSY ; 
 int /*<<< orphan*/  SWR ; 
 scalar_t__ FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct xgbe_prv_data *pdata)
{
	unsigned int count = 2000;

	FUNC0("-->xgbe_exit\n");

	/* Issue a software reset */
	FUNC2(pdata, DMA_MR, SWR, 1);
	FUNC3(10, 15);

	/* Poll Until Poll Condition */
	while (--count && FUNC1(pdata, DMA_MR, SWR))
		FUNC3(500, 600);

	if (!count)
		return -EBUSY;

	FUNC0("<--xgbe_exit\n");

	return 0;
}