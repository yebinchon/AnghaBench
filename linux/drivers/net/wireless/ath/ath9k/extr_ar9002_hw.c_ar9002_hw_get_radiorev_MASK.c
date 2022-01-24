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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct ath_hw *ah)
{
	u32 val;
	int i;

	FUNC1(ah);

	FUNC4(ah, FUNC0(0x36), 0x00007058);
	for (i = 0; i < 8; i++)
		FUNC4(ah, FUNC0(0x20), 0x00010000);

	FUNC2(ah);

	val = (FUNC3(ah, FUNC0(256)) >> 24) & 0xff;
	val = ((val & 0xf0) >> 4) | ((val & 0x0f) << 4);

	return FUNC5(val, 8);
}