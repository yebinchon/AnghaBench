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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  HTT_TX_Q_STATE_ENTRY_EXP ; 
 int /*<<< orphan*/  HTT_TX_Q_STATE_ENTRY_FACTOR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static u8 FUNC2(size_t count)
{
	int exp;
	int factor;

	exp = 0;
	factor = count >> 7;

	while (factor >= 64 && exp < 4) {
		factor >>= 3;
		exp++;
	}

	if (exp == 4)
		return 0xff;

	if (count > 0)
		factor = FUNC1(1, factor);

	return FUNC0(exp, HTT_TX_Q_STATE_ENTRY_EXP) |
	       FUNC0(factor, HTT_TX_Q_STATE_ENTRY_FACTOR);
}