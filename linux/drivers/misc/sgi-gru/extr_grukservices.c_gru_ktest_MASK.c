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
 int EINVAL ; 
 int FUNC0 () ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 

int FUNC5(unsigned long arg)
{
	int ret = -EINVAL;

	switch (arg & 0xff) {
	case 0:
		ret = FUNC1(arg);
		break;
	case 1:
		ret = FUNC2(arg);
		break;
	case 2:
		ret = FUNC3(arg);
		break;
	case 3:
		ret = FUNC4(arg);
		break;
	case 99:
		ret = FUNC0();
		break;
	}
	return ret;

}