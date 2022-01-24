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
typedef  int /*<<< orphan*/  u32 ;
struct ar5416IniArray {int ia_rows; } ;
struct ath_hw {int /*<<< orphan*/ * analogBank6Data; struct ar5416IniArray iniBank6; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5416IniArray*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah, unsigned int *writecnt)
{
	struct ar5416IniArray *array = &ah->iniBank6;
	u32 *data = ah->analogBank6Data;
	int r;

	FUNC1(ah);

	for (r = 0; r < array->ia_rows; r++) {
		FUNC4(ah, FUNC2(array, r, 0), data[r]);
		FUNC0(*writecnt);
	}

	FUNC3(ah);
}