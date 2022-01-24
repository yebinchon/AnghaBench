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
struct igc_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ AUTO_READ_DONE_TIMEOUT ; 
 int /*<<< orphan*/  IGC_EECD ; 
 int IGC_EECD_AUTO_RD ; 
 scalar_t__ IGC_ERR_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

s32 FUNC3(struct igc_hw *hw)
{
	s32 ret_val = 0;
	s32 i = 0;

	while (i < AUTO_READ_DONE_TIMEOUT) {
		if (FUNC1(IGC_EECD) & IGC_EECD_AUTO_RD)
			break;
		FUNC2(1000, 2000);
		i++;
	}

	if (i == AUTO_READ_DONE_TIMEOUT) {
		FUNC0("Auto read by HW from NVM has not completed.\n");
		ret_val = -IGC_ERR_RESET;
		goto out;
	}

out:
	return ret_val;
}