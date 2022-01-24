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
 int /*<<< orphan*/  PLL3 ; 
 int /*<<< orphan*/  PLL3_DO_MEAS_MASK ; 
 int /*<<< orphan*/  PLL4 ; 
 int PLL4_MEAS_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SQSUM_DVC_MASK ; 
 scalar_t__ FUNC3 (int) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

u32 FUNC7(struct ath_hw *ah)
{
	struct ath_common *common = FUNC4(ah);
	int i = 0;

	FUNC0(ah, PLL3, PLL3_DO_MEAS_MASK);
	FUNC6(100);
	FUNC2(ah, PLL3, PLL3_DO_MEAS_MASK);

	while ((FUNC1(ah, PLL4) & PLL4_MEAS_DONE) == 0) {

		FUNC6(100);

		if (FUNC3(i >= 100)) {
			FUNC5(common, "PLL4 measurement not done\n");
			break;
		}

		i++;
	}

	return (FUNC1(ah, PLL3) & SQSUM_DVC_MASK) >> 3;
}