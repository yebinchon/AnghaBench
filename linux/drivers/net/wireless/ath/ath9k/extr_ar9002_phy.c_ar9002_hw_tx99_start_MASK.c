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
 int /*<<< orphan*/  AR_CR ; 
 int AR_CR_RXD ; 
 int /*<<< orphan*/  AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AR_D_FPCTL ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_EIFS ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_SIFS ; 
 int FUNC2 (int) ; 
 int AR_Q_MISC_DCU_EARLY_TERM_REQ ; 
 int /*<<< orphan*/  AR_TIME_OUT ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah, u32 qnum)
{
	FUNC4(ah, 0x9864, 0x7f000);
	FUNC4(ah, 0x9924, 0x7f00fe);
	FUNC3(ah, AR_DIAG_SW, AR_DIAG_RX_DIS);
	FUNC5(ah, AR_CR, AR_CR_RXD);
	FUNC5(ah, FUNC0(qnum), 0);
	FUNC5(ah, AR_D_GBL_IFS_SIFS, 20);
	FUNC5(ah, AR_D_GBL_IFS_EIFS, 20);
	FUNC5(ah, AR_D_FPCTL, 0x10|qnum);
	FUNC5(ah, AR_TIME_OUT, 0x00000400);
	FUNC5(ah, FUNC1(qnum), 0xffffffff);
	FUNC4(ah, FUNC2(qnum), AR_Q_MISC_DCU_EARLY_TERM_REQ);
}