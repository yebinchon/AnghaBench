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
struct of_phandle_args {int args_count; unsigned int* args; int /*<<< orphan*/  np; } ;
struct mux_control {int dummy; } ;
struct mux_chip {int controllers; struct mux_control* mux; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 struct mux_control* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,...) ; 
 struct mux_chip* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 int FUNC5 (struct device_node*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct mux_control *FUNC7(struct device *dev, const char *mux_name)
{
	struct device_node *np = dev->of_node;
	struct of_phandle_args args;
	struct mux_chip *mux_chip;
	unsigned int controller;
	int index = 0;
	int ret;

	if (mux_name) {
		index = FUNC5(np, "mux-control-names",
						 mux_name);
		if (index < 0) {
			FUNC1(dev, "mux controller '%s' not found\n",
				mux_name);
			return FUNC0(index);
		}
	}

	ret = FUNC4(np,
					 "mux-controls", "#mux-control-cells",
					 index, &args);
	if (ret) {
		FUNC1(dev, "%pOF: failed to get mux-control %s(%i)\n",
			np, mux_name ?: "", index);
		return FUNC0(ret);
	}

	mux_chip = FUNC2(args.np);
	FUNC3(args.np);
	if (!mux_chip)
		return FUNC0(-EPROBE_DEFER);

	if (args.args_count > 1 ||
	    (!args.args_count && (mux_chip->controllers > 1))) {
		FUNC1(dev, "%pOF: wrong #mux-control-cells for %pOF\n",
			np, args.np);
		FUNC6(&mux_chip->dev);
		return FUNC0(-EINVAL);
	}

	controller = 0;
	if (args.args_count)
		controller = args.args[0];

	if (controller >= mux_chip->controllers) {
		FUNC1(dev, "%pOF: bad mux controller %u specified in %pOF\n",
			np, controller, args.np);
		FUNC6(&mux_chip->dev);
		return FUNC0(-EINVAL);
	}

	return &mux_chip->mux[controller];
}