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
typedef  int u32 ;
struct igc_hw {int dummy; } ;

/* Variables and functions */
 int IGC_COLD_SHIFT ; 
 int IGC_COLLISION_DISTANCE ; 
 int /*<<< orphan*/  IGC_TCTL ; 
 int IGC_TCTL_COLD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct igc_hw *hw)
{
	u32 tctl;

	tctl = FUNC0(IGC_TCTL);

	tctl &= ~IGC_TCTL_COLD;
	tctl |= IGC_COLLISION_DISTANCE << IGC_COLD_SHIFT;

	FUNC1(IGC_TCTL, tctl);
	FUNC2();
}