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
typedef  int u32 ;
struct regmap_field {int /*<<< orphan*/ * ops; struct mux_control* mux; } ;
struct regmap {int /*<<< orphan*/ * ops; struct mux_control* mux; } ;
struct reg_field {int reg; int msb; int lsb; } ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mux_control {int states; int idle_state; } ;
struct mux_chip {int /*<<< orphan*/ * ops; struct mux_control* mux; } ;
struct device_node {int /*<<< orphan*/  parent; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct regmap_field* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (struct regmap_field*) ; 
 int MUX_IDLE_AS_IS ; 
 int FUNC3 (struct regmap_field*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap_field* FUNC6 (struct device*,int,int) ; 
 int FUNC7 (struct device*,struct regmap_field*) ; 
 struct regmap_field* FUNC8 (struct device*,struct regmap_field*,struct reg_field) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 struct regmap_field** FUNC11 (struct regmap_field*) ; 
 int /*<<< orphan*/  mux_mmio_ops ; 
 scalar_t__ FUNC12 (struct device_node*,char*) ; 
 int FUNC13 (struct device_node*,char*) ; 
 int FUNC14 (struct device_node*,char*,int,int*) ; 
 struct regmap_field* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct regmap_field **fields;
	struct mux_chip *mux_chip;
	struct regmap *regmap;
	int num_fields;
	int ret;
	int i;

	if (FUNC12(np, "mmio-mux"))
		regmap = FUNC15(np->parent);
	else
		regmap = FUNC5(dev->parent, NULL) ?: FUNC0(-ENODEV);
	if (FUNC2(regmap)) {
		ret = FUNC3(regmap);
		FUNC4(dev, "failed to get regmap: %d\n", ret);
		return ret;
	}

	ret = FUNC13(np, "mux-reg-masks");
	if (ret == 0 || ret % 2)
		ret = -EINVAL;
	if (ret < 0) {
		FUNC4(dev, "mux-reg-masks property missing or invalid: %d\n",
			ret);
		return ret;
	}
	num_fields = ret / 2;

	mux_chip = FUNC6(dev, num_fields, num_fields *
				       sizeof(*fields));
	if (FUNC2(mux_chip))
		return FUNC3(mux_chip);

	fields = FUNC11(mux_chip);

	for (i = 0; i < num_fields; i++) {
		struct mux_control *mux = &mux_chip->mux[i];
		struct reg_field field;
		s32 idle_state = MUX_IDLE_AS_IS;
		u32 reg, mask;
		int bits;

		ret = FUNC14(np, "mux-reg-masks",
						 2 * i, &reg);
		if (!ret)
			ret = FUNC14(np, "mux-reg-masks",
							 2 * i + 1, &mask);
		if (ret < 0) {
			FUNC4(dev, "bitfield %d: failed to read mux-reg-masks property: %d\n",
				i, ret);
			return ret;
		}

		field.reg = reg;
		field.msb = FUNC10(mask) - 1;
		field.lsb = FUNC9(mask) - 1;

		if (mask != FUNC1(field.msb, field.lsb)) {
			FUNC4(dev, "bitfield %d: invalid mask 0x%x\n",
				i, mask);
			return -EINVAL;
		}

		fields[i] = FUNC8(dev, regmap, field);
		if (FUNC2(fields[i])) {
			ret = FUNC3(fields[i]);
			FUNC4(dev, "bitfield %d: failed allocate: %d\n",
				i, ret);
			return ret;
		}

		bits = 1 + field.msb - field.lsb;
		mux->states = 1 << bits;

		FUNC14(np, "idle-states", i,
					   (u32 *)&idle_state);
		if (idle_state != MUX_IDLE_AS_IS) {
			if (idle_state < 0 || idle_state >= mux->states) {
				FUNC4(dev, "bitfield: %d: out of range idle state %d\n",
					i, idle_state);
				return -EINVAL;
			}

			mux->idle_state = idle_state;
		}
	}

	mux_chip->ops = &mux_mmio_ops;

	return FUNC7(dev, mux_chip);
}