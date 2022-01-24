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
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DYNACK ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah, int to)
{
	struct ath_common *common = FUNC0(ah);
	int slottime = (to - 3) / 2;

	FUNC4(common, DYNACK, "ACK timeout %u slottime %u\n",
		to, slottime);
	FUNC3(ah, slottime);
	FUNC1(ah, to);
	FUNC2(ah, to);
}