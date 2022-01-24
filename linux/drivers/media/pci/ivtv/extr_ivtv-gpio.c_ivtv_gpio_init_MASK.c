#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_11__ {TYPE_6__* ctrl_handler; int /*<<< orphan*/  grp_id; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_13__ {int error; } ;
struct ivtv {TYPE_3__ sd_gpio; TYPE_4__ v4l2_dev; TYPE_6__ hdl_gpio; TYPE_2__* card; } ;
struct TYPE_9__ {int direction; int initial_value; } ;
struct TYPE_10__ {int xceive_pin; TYPE_1__ gpio_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IVTV_HW_GPIO ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_DIR ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_OUT ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  gpio_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  subdev_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

int FUNC9(struct ivtv *itv)
{
	u16 pin = 0;

	if (itv->card->xceive_pin)
		pin = 1 << itv->card->xceive_pin;

	if ((itv->card->gpio_init.direction | pin) == 0)
		return 0;

	FUNC0("GPIO initial dir: %08x out: %08x\n",
		   FUNC1(IVTV_REG_GPIO_DIR), FUNC1(IVTV_REG_GPIO_OUT));

	/* init output data then direction */
	FUNC8(itv->card->gpio_init.initial_value | pin, IVTV_REG_GPIO_OUT);
	FUNC8(itv->card->gpio_init.direction | pin, IVTV_REG_GPIO_DIR);
	FUNC7(&itv->sd_gpio, &subdev_ops);
	FUNC2(itv->sd_gpio.name, sizeof(itv->sd_gpio.name), "%s-gpio", itv->v4l2_dev.name);
	itv->sd_gpio.grp_id = IVTV_HW_GPIO;
	FUNC3(&itv->hdl_gpio, 1);
	FUNC5(&itv->hdl_gpio, &gpio_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
	if (itv->hdl_gpio.error)
		return itv->hdl_gpio.error;
	itv->sd_gpio.ctrl_handler = &itv->hdl_gpio;
	FUNC4(&itv->hdl_gpio);
	return FUNC6(&itv->v4l2_dev, &itv->sd_gpio);
}