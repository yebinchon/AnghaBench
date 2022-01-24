#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct adp1653_flash {TYPE_4__* torch_intensity; TYPE_3__* flash_timeout; TYPE_2__* led_mode; TYPE_1__* indicator_intensity; int /*<<< orphan*/  subdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  val; } ;
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADP1653_REG_CONFIG ; 
 int ADP1653_REG_CONFIG_TMR_CFG ; 
 int ADP1653_REG_CONFIG_TMR_SET_SHIFT ; 
 int /*<<< orphan*/  ADP1653_REG_OUT_SEL ; 
 int ADP1653_REG_OUT_SEL_HPLED_SHIFT ; 
 int ADP1653_REG_OUT_SEL_ILED_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  V4L2_FLASH_LED_MODE_FLASH 130 
#define  V4L2_FLASH_LED_MODE_NONE 129 
#define  V4L2_FLASH_LED_MODE_TORCH 128 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct adp1653_flash *flash)
{
	struct i2c_client *client = FUNC4(&flash->subdev);
	u8 out_sel;
	u8 config = 0;
	int rval;

	out_sel = FUNC1(
		flash->indicator_intensity->val)
		<< ADP1653_REG_OUT_SEL_ILED_SHIFT;

	switch (flash->led_mode->val) {
	case V4L2_FLASH_LED_MODE_NONE:
		break;
	case V4L2_FLASH_LED_MODE_FLASH:
		/* Flash mode, light on with strobe, duration from timer */
		config = ADP1653_REG_CONFIG_TMR_CFG;
		config |= FUNC2(flash->flash_timeout->val)
			  << ADP1653_REG_CONFIG_TMR_SET_SHIFT;
		break;
	case V4L2_FLASH_LED_MODE_TORCH:
		/* Torch mode, light immediately on, duration indefinite */
		out_sel |= FUNC0(
			flash->torch_intensity->val)
			<< ADP1653_REG_OUT_SEL_HPLED_SHIFT;
		break;
	}

	rval = FUNC3(client, ADP1653_REG_OUT_SEL, out_sel);
	if (rval < 0)
		return rval;

	rval = FUNC3(client, ADP1653_REG_CONFIG, config);
	if (rval < 0)
		return rval;

	return 0;
}