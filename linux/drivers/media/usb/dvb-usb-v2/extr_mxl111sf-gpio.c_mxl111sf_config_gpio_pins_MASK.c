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
typedef  int u8 ;
struct mxl_gpio_cfg {int pin; int dir; int /*<<< orphan*/  val; } ;
struct mxl111sf_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MXL_GPIO_DIR_OUTPUT ; 
 int /*<<< orphan*/  MXL_GPIO_MUX_REG_0 ; 
 int /*<<< orphan*/  MXL_GPIO_MUX_REG_1 ; 
 int /*<<< orphan*/  MXL_GPIO_MUX_REG_2 ; 
 int FUNC0 (struct mxl111sf_state*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mxl111sf_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct mxl111sf_state*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mxl111sf_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mxl111sf_state *state,
				     struct mxl_gpio_cfg *gpio_cfg)
{
	int ret;
	u8 tmp;

	FUNC4("(%d, %d)", gpio_cfg->pin, gpio_cfg->dir);

	switch (gpio_cfg->pin) {
	case 0:
	case 1:
	case 2:
	case 3:
		ret = FUNC1(state, MXL_GPIO_MUX_REG_0, &tmp);
		if (FUNC5(ret))
			goto fail;
		tmp &= ~(1 << (gpio_cfg->pin + 4));
		tmp |= (gpio_cfg->dir << (gpio_cfg->pin + 4));
		ret = FUNC3(state, MXL_GPIO_MUX_REG_0, tmp);
		if (FUNC5(ret))
			goto fail;
		break;
	case 4:
	case 5:
	case 6:
	case 7:
		ret = FUNC1(state, MXL_GPIO_MUX_REG_1, &tmp);
		if (FUNC5(ret))
			goto fail;
		tmp &= ~(1 << gpio_cfg->pin);
		tmp |= (gpio_cfg->dir << gpio_cfg->pin);
		ret = FUNC3(state, MXL_GPIO_MUX_REG_1, tmp);
		if (FUNC5(ret))
			goto fail;
		break;
	case 8:
	case 9:
	case 10:
		ret = FUNC1(state, MXL_GPIO_MUX_REG_2, &tmp);
		if (FUNC5(ret))
			goto fail;
		tmp &= ~(1 << (gpio_cfg->pin - 3));
		tmp |= (gpio_cfg->dir << (gpio_cfg->pin - 3));
		ret = FUNC3(state, MXL_GPIO_MUX_REG_2, tmp);
		if (FUNC5(ret))
			goto fail;
		break;
	default:
		return -EINVAL; /* invalid pin */
	}

	ret = (MXL_GPIO_DIR_OUTPUT == gpio_cfg->dir) ?
		FUNC2(state,
				       gpio_cfg->pin, gpio_cfg->val) :
		FUNC0(state,
				       gpio_cfg->pin, &gpio_cfg->val);
	FUNC5(ret);
fail:
	return ret;
}