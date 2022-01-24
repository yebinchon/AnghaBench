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
struct il_priv {int dummy; } ;
struct il_led_cmd {int dummy; } ;
struct il_host_cmd {int len; int /*<<< orphan*/ * callback; int /*<<< orphan*/  flags; struct il_led_cmd* data; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int CSR_LED_BSM_CTRL_MSK ; 
 int /*<<< orphan*/  CSR_LED_REG ; 
 int /*<<< orphan*/  C_LEDS ; 
 int FUNC0 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct il_priv*,struct il_host_cmd*) ; 

__attribute__((used)) static int
FUNC3(struct il_priv *il, struct il_led_cmd *led_cmd)
{
	struct il_host_cmd cmd = {
		.id = C_LEDS,
		.len = sizeof(struct il_led_cmd),
		.data = led_cmd,
		.flags = CMD_ASYNC,
		.callback = NULL,
	};
	u32 reg;

	reg = FUNC0(il, CSR_LED_REG);
	if (reg != (reg & CSR_LED_BSM_CTRL_MSK))
		FUNC1(il, CSR_LED_REG, reg & CSR_LED_BSM_CTRL_MSK);

	return FUNC2(il, &cmd);
}