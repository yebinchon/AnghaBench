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
struct docg3 {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*) ; 

__attribute__((used)) static int FUNC3(struct docg3 *docg3)
{
	int maxWaitCycles = 100;

	do {
		FUNC1(docg3, 4);
		FUNC0();
	} while (!FUNC2(docg3) && maxWaitCycles--);
	FUNC1(docg3, 2);
	if (maxWaitCycles > 0)
		return 0;
	else
		return -EIO;
}