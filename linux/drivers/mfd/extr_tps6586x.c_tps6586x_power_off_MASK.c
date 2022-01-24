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

/* Variables and functions */
 int /*<<< orphan*/  EXITSLREQ_BIT ; 
 int /*<<< orphan*/  SLEEP_MODE_BIT ; 
 int /*<<< orphan*/  TPS6586X_SUPPLYENE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tps6586x_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (FUNC0(tps6586x_dev, TPS6586X_SUPPLYENE, EXITSLREQ_BIT))
		return;

	FUNC1(tps6586x_dev, TPS6586X_SUPPLYENE, SLEEP_MODE_BIT);
}