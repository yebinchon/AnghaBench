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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STK1160_I2C_TIMEOUT ; 
 scalar_t__ STK1160_SICTL ; 
 int USEC_PER_MSEC ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stk1160*,scalar_t__,int*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct stk1160 *dev, u8 wait_bit_mask)
{
	unsigned long end;
	u8 flag;

	/* Wait until read/write finish bit is set */
	end = jiffies + FUNC0(STK1160_I2C_TIMEOUT);
	while (FUNC2(end)) {

		FUNC1(dev, STK1160_SICTL+1, &flag);
		/* read/write done? */
		if (flag & wait_bit_mask)
			goto done;

		FUNC3(10 * USEC_PER_MSEC, 20 * USEC_PER_MSEC);
	}

	return -ETIMEDOUT;

done:
	return 0;
}