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
struct mux_control {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mux_control* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mux_control*) ; 
 int /*<<< orphan*/  devm_mux_control_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct mux_control**) ; 
 struct mux_control** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mux_control**) ; 
 struct mux_control* FUNC5 (struct device*,char const*) ; 

struct mux_control *FUNC6(struct device *dev,
					 const char *mux_name)
{
	struct mux_control **ptr, *mux;

	ptr = FUNC3(devm_mux_control_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	mux = FUNC5(dev, mux_name);
	if (FUNC1(mux)) {
		FUNC4(ptr);
		return mux;
	}

	*ptr = mux;
	FUNC2(dev, ptr);

	return mux;
}