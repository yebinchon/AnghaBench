#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ati_remote {unsigned long acc_jiffies; scalar_t__ old_jiffies; } ;
struct TYPE_3__ {int msecs; int value; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* accel ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ati_remote *ati_remote)
{
	unsigned long now = jiffies, reset_time;
	int i;

	reset_time = FUNC1(250);

	if (FUNC2(now, ati_remote->old_jiffies + reset_time)) {
		ati_remote->acc_jiffies = now;
		return 1;
	}
	for (i = 0; i < FUNC0(accel) - 1; i++) {
		unsigned long timeout = FUNC1(accel[i].msecs);

		if (FUNC3(now, ati_remote->acc_jiffies + timeout))
			return accel[i].value;
	}
	return accel[i].value;
}