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
struct uniphier_sd_priv {void* pinstate_uhs; void* pinctrl; void* pinstate_default; } ;
struct TYPE_2__ {int /*<<< orphan*/  start_signal_voltage_switch; } ;
struct tmio_mmc_host {TYPE_1__ ops; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 char* PINCTRL_STATE_DEFAULT ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,char*) ; 
 int /*<<< orphan*/  uniphier_sd_start_signal_voltage_switch ; 

__attribute__((used)) static int FUNC5(struct tmio_mmc_host *host,
				struct uniphier_sd_priv *priv)
{
	priv->pinctrl = FUNC2(FUNC3(host->mmc));
	if (FUNC0(priv->pinctrl))
		return FUNC1(priv->pinctrl);

	priv->pinstate_default = FUNC4(priv->pinctrl,
						      PINCTRL_STATE_DEFAULT);
	if (FUNC0(priv->pinstate_default))
		return FUNC1(priv->pinstate_default);

	priv->pinstate_uhs = FUNC4(priv->pinctrl, "uhs");
	if (FUNC0(priv->pinstate_uhs))
		return FUNC1(priv->pinstate_uhs);

	host->ops.start_signal_voltage_switch =
					uniphier_sd_start_signal_voltage_switch;

	return 0;
}