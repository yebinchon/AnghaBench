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
struct ar5416IniArray {int ia_rows; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5416IniArray const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct ath_hw *ah, const struct ar5416IniArray *array,
			  int column, unsigned int *writecnt)
{
	int r;

	FUNC1(ah);
	for (r = 0; r < array->ia_rows; r++) {
		FUNC4(ah, FUNC2(array, r, 0),
			  FUNC2(array, r, column));
		FUNC0(*writecnt);
	}
	FUNC3(ah);
}