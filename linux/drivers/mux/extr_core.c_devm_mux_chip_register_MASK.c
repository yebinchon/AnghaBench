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
struct mux_chip {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_mux_chip_reg_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct mux_chip**) ; 
 struct mux_chip** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mux_chip**) ; 
 int FUNC3 (struct mux_chip*) ; 

int FUNC4(struct device *dev,
			   struct mux_chip *mux_chip)
{
	struct mux_chip **ptr;
	int res;

	ptr = FUNC1(devm_mux_chip_reg_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	res = FUNC3(mux_chip);
	if (res) {
		FUNC2(ptr);
		return res;
	}

	*ptr = mux_chip;
	FUNC0(dev, ptr);

	return res;
}