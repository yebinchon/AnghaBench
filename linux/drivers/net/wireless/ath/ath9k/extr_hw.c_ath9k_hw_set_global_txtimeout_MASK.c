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
struct ath_hw {int globaltxtimeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_GTXTO ; 
 int /*<<< orphan*/  AR_GTXTO_TIMEOUT_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XMIT ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC3(struct ath_hw *ah, u32 tu)
{
	if (tu > 0xFFFF) {
		FUNC2(FUNC1(ah), XMIT, "bad global tx timeout %u\n",
			tu);
		ah->globaltxtimeout = (u32) -1;
		return false;
	} else {
		FUNC0(ah, AR_GTXTO, AR_GTXTO_TIMEOUT_LIMIT, tu);
		ah->globaltxtimeout = tu;
		return true;
	}
}