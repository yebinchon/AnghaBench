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
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,char const*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char const*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, int pin, int dir,
			    const char *name)
{
	int ret = -ENODEV;

	if (!FUNC4(pin))
		return ret;

	ret = FUNC5(pin, name);
	if (ret) {
		FUNC0(dev, "Failed to allocate pin %d (%s)\n", pin, name);
		return ret;
	}

	ret = FUNC1(pin, dir);
	if (ret) {
		FUNC0(dev, "Failed to set direction for pin %d (%s)\n",
			pin, name);
		FUNC3(pin);
		return ret;
	}

	ret = FUNC2(pin, false);
	if (ret) {
		FUNC0(dev, "Failed to export pin %d (%s)\n", pin, name);
		FUNC3(pin);
		return ret;
	}

	return 0;
}