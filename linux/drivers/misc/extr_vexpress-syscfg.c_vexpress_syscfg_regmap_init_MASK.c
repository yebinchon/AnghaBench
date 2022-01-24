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
typedef  scalar_t__ u32 ;
struct vexpress_syscfg_func {int num_templates; void* regmap; int /*<<< orphan*/  list; int /*<<< orphan*/ * template; struct vexpress_syscfg* syscfg; } ;
struct vexpress_syscfg {int /*<<< orphan*/  funcs; } ;
typedef  void regmap ;
struct property {int length; int /*<<< orphan*/ * value; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int max_register; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,struct vexpress_syscfg_func*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct vexpress_syscfg_func*) ; 
 struct vexpress_syscfg_func* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 struct property* FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 void* FUNC15 (struct device*,int /*<<< orphan*/ *,struct vexpress_syscfg_func*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct vexpress_syscfg_func*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  template ; 
 int FUNC17 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 TYPE_1__ vexpress_syscfg_regmap_config ; 

__attribute__((used)) static struct regmap *FUNC18(struct device *dev,
		void *context)
{
	int err;
	struct vexpress_syscfg *syscfg = context;
	struct vexpress_syscfg_func *func;
	struct property *prop;
	const __be32 *val = NULL;
	__be32 energy_quirk[4];
	int num;
	u32 site, position, dcc;
	int i;

	err = FUNC17(dev->of_node, &site,
				&position, &dcc);
	if (err)
		return FUNC0(err);

	prop = FUNC14(dev->of_node,
			"arm,vexpress-sysreg,func", NULL);
	if (!prop)
		return FUNC0(-EINVAL);

	num = prop->length / sizeof(u32) / 2;
	val = prop->value;

	/*
	 * "arm,vexpress-energy" function used to be described
	 * by its first device only, now it requires both
	 */
	if (num == 1 && FUNC13(dev->of_node,
			"arm,vexpress-energy")) {
		num = 2;
		energy_quirk[0] = *val;
		energy_quirk[2] = *val++;
		energy_quirk[1] = *val;
		energy_quirk[3] = FUNC8(FUNC7(val) + 1);
		val = energy_quirk;
	}

	func = FUNC11(FUNC16(func, template, num), GFP_KERNEL);
	if (!func)
		return FUNC0(-ENOMEM);

	func->syscfg = syscfg;
	func->num_templates = num;

	for (i = 0; i < num; i++) {
		u32 function, device;

		function = FUNC7(val++);
		device = FUNC7(val++);

		FUNC9(dev, "func %p: %u/%u/%u/%u/%u\n",
				func, site, position, dcc,
				function, device);

		func->template[i] = FUNC2(dcc);
		func->template[i] |= FUNC6(site);
		func->template[i] |= FUNC5(position);
		func->template[i] |= FUNC4(function);
		func->template[i] |= FUNC3(device);
	}

	vexpress_syscfg_regmap_config.max_register = num - 1;

	func->regmap = FUNC15(dev, NULL, func,
			&vexpress_syscfg_regmap_config);

	if (FUNC1(func->regmap)) {
		void *err = func->regmap;

		FUNC10(func);
		return err;
	}

	FUNC12(&func->list, &syscfg->funcs);

	return func->regmap;
}