#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_hw {int dummy; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_2__ {scalar_t__ ath_bus_type; } ;

/* Variables and functions */
 scalar_t__ ATH_USB ; 
 int /*<<< orphan*/  EEPROM ; 
 int FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC5(struct ath_hw *ah)
{
	struct ath_common *common = FUNC2(ah);

	if (!FUNC3(ah)) {
		FUNC4(common, EEPROM, "Reading from EEPROM, not flash\n");
	}

	if (common->bus_ops->ath_bus_type == ATH_USB)
		return FUNC1(ah);
	else
		return FUNC0(ah);
}