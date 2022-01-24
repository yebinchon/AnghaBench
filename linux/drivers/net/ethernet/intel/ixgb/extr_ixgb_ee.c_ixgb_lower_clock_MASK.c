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
struct ixgb_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EECD ; 
 int IXGB_EECD_SK ; 
 int /*<<< orphan*/  FUNC0 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct ixgb_hw *hw,
		  u32 *eecd_reg)
{
	/* Lower the clock input to the EEPROM (by clearing the SK bit), and then
	 * wait 50 microseconds.
	 */
	*eecd_reg = *eecd_reg & ~IXGB_EECD_SK;
	FUNC1(hw, EECD, *eecd_reg);
	FUNC0(hw);
	FUNC2(50);
}