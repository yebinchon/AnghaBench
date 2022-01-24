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
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 long FUNC0 (unsigned int) ; 
 long FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(unsigned int msecs, int intr)
{
	long int timeout = FUNC0(msecs);
	int sig;

	do {
		FUNC2(intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
		timeout = FUNC1(timeout);
		sig = intr ? FUNC3(current) : 0;
	} while (!sig && timeout);
	return sig;
}