#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mux_gpio {struct mux_chip* gpios; } ;
struct mux_chip {int ndescs; TYPE_1__* mux; int /*<<< orphan*/ * ops; } ;
typedef  int s32 ;
struct TYPE_2__ {int states; int idle_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct mux_chip*) ; 
 int MUX_IDLE_AS_IS ; 
 int FUNC1 (struct mux_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int FUNC5 (struct device*,char*,int /*<<< orphan*/ *) ; 
 struct mux_chip* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct mux_chip* FUNC7 (struct device*,int,int) ; 
 int FUNC8 (struct device*,struct mux_chip*) ; 
 int FUNC9 (struct device*,char*) ; 
 struct mux_gpio* FUNC10 (struct mux_chip*) ; 
 int /*<<< orphan*/  mux_gpio_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mux_chip *mux_chip;
	struct mux_gpio *mux_gpio;
	int pins;
	s32 idle_state;
	int ret;

	pins = FUNC9(dev, "mux");
	if (pins < 0)
		return pins;

	mux_chip = FUNC7(dev, 1, sizeof(*mux_gpio));
	if (FUNC0(mux_chip))
		return FUNC1(mux_chip);

	mux_gpio = FUNC10(mux_chip);
	mux_chip->ops = &mux_gpio_ops;

	mux_gpio->gpios = FUNC6(dev, "mux", GPIOD_OUT_LOW);
	if (FUNC0(mux_gpio->gpios)) {
		ret = FUNC1(mux_gpio->gpios);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "failed to get gpios\n");
		return ret;
	}
	FUNC2(pins != mux_gpio->gpios->ndescs);
	mux_chip->mux->states = 1 << pins;

	ret = FUNC5(dev, "idle-state", (u32 *)&idle_state);
	if (ret >= 0 && idle_state != MUX_IDLE_AS_IS) {
		if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
			FUNC3(dev, "invalid idle-state %u\n", idle_state);
			return -EINVAL;
		}

		mux_chip->mux->idle_state = idle_state;
	}

	ret = FUNC8(dev, mux_chip);
	if (ret < 0)
		return ret;

	FUNC4(dev, "%u-way mux-controller registered\n",
		 mux_chip->mux->states);

	return 0;
}