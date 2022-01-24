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
struct stk1160 {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  STK1160_AC97CTL_0 ; 
 int STK1160_AC97CTL_0_CR ; 
 int STK1160_AC97CTL_0_CW ; 
 int /*<<< orphan*/  STK1160_AC97_TIMEOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct stk1160*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct stk1160 *dev)
{
	unsigned long timeout = jiffies + FUNC0(STK1160_AC97_TIMEOUT);
	u8 value;

	/* Wait for AC97 transfer to complete */
	while (FUNC3(timeout)) {
		FUNC2(dev, STK1160_AC97CTL_0, &value);

		if (!(value & (STK1160_AC97CTL_0_CR | STK1160_AC97CTL_0_CW)))
			return 0;

		FUNC4(50, 100);
	}

	FUNC1("AC97 transfer took too long, this should never happen!");
	return -EBUSY;
}