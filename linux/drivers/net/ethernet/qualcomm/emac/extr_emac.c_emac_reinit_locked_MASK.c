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
struct emac_adapter {int /*<<< orphan*/  reset_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_adapter*) ; 
 int FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct emac_adapter *adpt)
{
	int ret;

	FUNC3(&adpt->reset_lock);

	FUNC0(adpt);
	FUNC2(adpt);
	ret = FUNC1(adpt);

	FUNC4(&adpt->reset_lock);

	return ret;
}