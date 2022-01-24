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
struct TYPE_2__ {struct mmc_gpio* handler_priv; } ;
struct mmc_host {int /*<<< orphan*/  parent; TYPE_1__ slot; } ;
struct mmc_gpio {unsigned int cd_debounce_delay_ms; int override_cd_active_level; struct gpio_desc* cd_gpio; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 struct gpio_desc* FUNC2 (int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*) ; 
 int FUNC4 (struct gpio_desc*,unsigned int) ; 

int FUNC5(struct mmc_host *host, const char *con_id,
			 unsigned int idx, bool override_active_level,
			 unsigned int debounce, bool *gpio_invert)
{
	struct mmc_gpio *ctx = host->slot.handler_priv;
	struct gpio_desc *desc;
	int ret;

	desc = FUNC2(host->parent, con_id, idx, GPIOD_IN);
	if (FUNC0(desc))
		return FUNC1(desc);

	if (debounce) {
		ret = FUNC4(desc, debounce);
		if (ret < 0)
			ctx->cd_debounce_delay_ms = debounce / 1000;
	}

	if (gpio_invert)
		*gpio_invert = !FUNC3(desc);

	ctx->override_cd_active_level = override_active_level;
	ctx->cd_gpio = desc;

	return 0;
}