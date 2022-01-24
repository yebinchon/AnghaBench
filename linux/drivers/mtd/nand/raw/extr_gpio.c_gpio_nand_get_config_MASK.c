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
struct gpio_nand_platdata {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct device const*) ; 
 int FUNC1 (struct device const*,struct gpio_nand_platdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_nand_platdata*,scalar_t__,int) ; 

__attribute__((used)) static inline int FUNC3(const struct device *dev,
				       struct gpio_nand_platdata *plat)
{
	int ret = FUNC1(dev, plat);

	if (!ret)
		return ret;

	if (FUNC0(dev)) {
		FUNC2(plat, FUNC0(dev), sizeof(*plat));
		return 0;
	}

	return -EINVAL;
}