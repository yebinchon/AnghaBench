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

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_IN_KHZ ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long) ; 

__attribute__((used)) static int FUNC3(int wanted, unsigned long clk, int max)
{
	int result;

	result = FUNC0((wanted * clk), NS_IN_KHZ);

	FUNC1("result %d from %ld, %d\n", result, clk, wanted);

	if (result > max) {
		FUNC2("%d ns is too big for current clock rate %ld\n",
			wanted, clk);
		return -1;
	}

	if (result < 1)
		result = 1;

	return result;
}