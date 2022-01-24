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
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RX_MSG_RAW ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct ath_hw *ah, u32 ints)
{
	u32 intr;

	intr = FUNC0(ah, AR_MCI_INTERRUPT_RX_MSG_RAW);
	return ((intr & ints) == ints);
}