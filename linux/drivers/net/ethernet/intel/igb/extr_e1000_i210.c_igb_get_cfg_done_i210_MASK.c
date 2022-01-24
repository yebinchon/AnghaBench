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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EEMNGCTL_I210 ; 
 int E1000_NVM_CFG_DONE_PORT_0 ; 
 scalar_t__ PHY_CFG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

s32 FUNC3(struct e1000_hw *hw)
{
	s32 timeout = PHY_CFG_TIMEOUT;
	u32 mask = E1000_NVM_CFG_DONE_PORT_0;

	while (timeout) {
		if (FUNC1(E1000_EEMNGCTL_I210) & mask)
			break;
		FUNC2(1000, 2000);
		timeout--;
	}
	if (!timeout)
		FUNC0("MNG configuration cycle has not completed.\n");

	return 0;
}