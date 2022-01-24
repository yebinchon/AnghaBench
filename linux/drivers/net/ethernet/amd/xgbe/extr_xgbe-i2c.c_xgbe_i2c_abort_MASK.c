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
 int /*<<< orphan*/  ABORT ; 
 int EBUSY ; 
 int /*<<< orphan*/  EN ; 
 int /*<<< orphan*/  IC_ENABLE ; 
 unsigned int XGBE_ABORT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct xgbe_prv_data *pdata)
{
	unsigned int wait = XGBE_ABORT_COUNT;

	/* Must be enabled to recognize the abort request */
	FUNC1(pdata, IC_ENABLE, EN, 1);

	/* Issue the abort */
	FUNC1(pdata, IC_ENABLE, ABORT, 1);

	while (wait--) {
		if (!FUNC0(pdata, IC_ENABLE, ABORT))
			return 0;

		FUNC2(500, 600);
	}

	return -EBUSY;
}