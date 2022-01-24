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
struct xgbe_prv_data {unsigned long link_check; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long XGBE_LINK_TIMEOUT ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	unsigned long link_timeout;

	link_timeout = pdata->link_check + (XGBE_LINK_TIMEOUT * HZ);
	if (FUNC1(jiffies, link_timeout)) {
		FUNC0(pdata, link, pdata->netdev, "AN link timeout\n");
		FUNC2(pdata);
	}
}