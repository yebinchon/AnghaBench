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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_STNUR ; 
 int /*<<< orphan*/  MAC_STSUR ; 
 int /*<<< orphan*/  MAC_TSCR ; 
 int /*<<< orphan*/  TSINIT ; 
 scalar_t__ FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct xgbe_prv_data *pdata, unsigned int sec,
				 unsigned int nsec)
{
	unsigned int count = 10000;

	/* Set the time values and tell the device */
	FUNC1(pdata, MAC_STSUR, sec);
	FUNC1(pdata, MAC_STNUR, nsec);
	FUNC2(pdata, MAC_TSCR, TSINIT, 1);

	/* Wait for time update to complete */
	while (--count && FUNC0(pdata, MAC_TSCR, TSINIT))
		FUNC4(5);

	if (!count)
		FUNC3(pdata->netdev, "timed out initializing timestamp\n");
}