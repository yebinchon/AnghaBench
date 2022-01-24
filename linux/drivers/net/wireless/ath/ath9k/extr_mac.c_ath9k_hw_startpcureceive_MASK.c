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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int AR_DIAG_RX_ABORT ; 
 int AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 

void FUNC3(struct ath_hw *ah, bool is_scanning)
{
	FUNC2(ah);

	FUNC1(ah, is_scanning);

	FUNC0(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));
}