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
 int /*<<< orphan*/  ENOMEM ; 
 struct mux_chip* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mux_chip*) ; 
 int /*<<< orphan*/  devm_mux_chip_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct mux_chip**) ; 
 struct mux_chip** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mux_chip**) ; 
 struct mux_chip* FUNC5 (struct device*,unsigned int,size_t) ; 

struct mux_chip *FUNC6(struct device *dev,
				     unsigned int controllers,
				     size_t sizeof_priv)
{
	struct mux_chip **ptr, *mux_chip;

	ptr = FUNC3(devm_mux_chip_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	mux_chip = FUNC5(dev, controllers, sizeof_priv);
	if (FUNC1(mux_chip)) {
		FUNC4(ptr);
		return mux_chip;
	}

	*ptr = mux_chip;
	FUNC2(dev, ptr);

	return mux_chip;
}