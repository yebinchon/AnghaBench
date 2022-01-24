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
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct isp_ccdc_device *ccdc,
			      unsigned int max_wait)
{
	unsigned int wait = 0;

	if (max_wait == 0)
		max_wait = 10000; /* 10 ms */

	for (wait = 0; wait <= max_wait; wait++) {
		if (!FUNC0(ccdc))
			return 0;

		FUNC1();
		FUNC2(1);
	}

	return -EBUSY;
}