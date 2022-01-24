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
typedef  scalar_t__ u32 ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct octeon_device *oct, u32 *timeout)
{
	int ret = 1;
	u32 ms;

	if (!timeout)
		return ret;

	for (ms = 0; (ret != 0) && ((*timeout == 0) || (ms <= *timeout));
	     ms += HZ / 10) {
		ret = FUNC0(oct);

		/* wait 100 ms */
		if (ret)
			FUNC1(HZ / 10);
	}

	return ret;
}