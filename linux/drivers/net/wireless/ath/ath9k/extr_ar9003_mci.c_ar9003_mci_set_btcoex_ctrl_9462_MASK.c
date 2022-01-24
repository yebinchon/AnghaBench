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

/* Variables and functions */
 int /*<<< orphan*/  AR_BTCOEX_CTRL ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_1_CHAIN_ACK ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_1_CHAIN_BCN ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_AR9462_MODE ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_LNA_SHARED ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_NUM_ANTENNAS ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_PA_SHARED ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_RX_CHAIN_MASK ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL_WBTIMER_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ath_hw *ah)
{
	u32 regval;

        regval = FUNC1(1, AR_BTCOEX_CTRL_AR9462_MODE) |
		 FUNC1(1, AR_BTCOEX_CTRL_WBTIMER_EN) |
		 FUNC1(1, AR_BTCOEX_CTRL_PA_SHARED) |
		 FUNC1(1, AR_BTCOEX_CTRL_LNA_SHARED) |
		 FUNC1(2, AR_BTCOEX_CTRL_NUM_ANTENNAS) |
		 FUNC1(3, AR_BTCOEX_CTRL_RX_CHAIN_MASK) |
		 FUNC1(0, AR_BTCOEX_CTRL_1_CHAIN_ACK) |
		 FUNC1(0, AR_BTCOEX_CTRL_1_CHAIN_BCN) |
		 FUNC1(0, AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN);

	FUNC0(ah, AR_BTCOEX_CTRL, regval);
}