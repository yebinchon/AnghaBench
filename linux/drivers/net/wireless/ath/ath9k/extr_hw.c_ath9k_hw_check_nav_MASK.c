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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_NAV ; 
 int /*<<< orphan*/  BSTUCK ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC4(struct ath_hw *ah)
{
	struct ath_common *common = FUNC2(ah);
	u32 val;

	val = FUNC0(ah, AR_NAV);
	if (val != 0xdeadbeef && val > 0x7fff) {
		FUNC3(common, BSTUCK, "Abnormal NAV: 0x%x\n", val);
		FUNC1(ah, AR_NAV, 0);
	}
}