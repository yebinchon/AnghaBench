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
struct ef4_nic {scalar_t__ state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ STATE_DISABLED ; 
 scalar_t__ STATE_UNINIT ; 
 struct ef4_nic* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct ef4_nic *efx = FUNC0(dev);

	FUNC4();

	if (efx->state != STATE_DISABLED) {
		efx->state = STATE_UNINIT;

		FUNC1(efx);

		FUNC3(efx);
		FUNC2(efx);
	}

	FUNC5();

	return 0;
}