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
typedef  scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EECD ; 
 scalar_t__ E1000_EECD_FLUDONE_I210 ; 
 scalar_t__ E1000_ERR_NVM ; 
 scalar_t__ E1000_FLUDONE_ATTEMPTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static s32 FUNC2(struct e1000_hw *hw)
{
	s32 ret_val = -E1000_ERR_NVM;
	u32 i, reg;

	for (i = 0; i < E1000_FLUDONE_ATTEMPTS; i++) {
		reg = FUNC0(E1000_EECD);
		if (reg & E1000_EECD_FLUDONE_I210) {
			ret_val = 0;
			break;
		}
		FUNC1(5);
	}

	return ret_val;
}