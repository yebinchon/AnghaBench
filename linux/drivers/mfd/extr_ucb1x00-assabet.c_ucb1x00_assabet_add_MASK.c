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
struct ucb1x00_dev {struct platform_device* priv; struct ucb1x00* ucb; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct ucb1x00 {int /*<<< orphan*/  dev; TYPE_1__ gpio; } ;
struct platform_device {int dummy; } ;
struct gpio_keys_platform_data {int can_disable; unsigned int nbuttons; int poll_interval; char* name; struct gpio_keys_platform_data* buttons; int /*<<< orphan*/  type; scalar_t__ gpio; scalar_t__ code; } ;
struct gpio_keys_button {int can_disable; unsigned int nbuttons; int poll_interval; char* name; struct gpio_keys_button* buttons; int /*<<< orphan*/  type; scalar_t__ gpio; scalar_t__ code; } ;
typedef  int /*<<< orphan*/  keys ;
typedef  int /*<<< orphan*/  buttons ;

/* Variables and functions */
 unsigned int FUNC0 (struct gpio_keys_platform_data*) ; 
 scalar_t__ BTN_0 ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  dev_attr_batt_temp ; 
 int /*<<< orphan*/  dev_attr_vbatt ; 
 int /*<<< orphan*/  dev_attr_vcharger ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_keys_platform_data*,int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ *,char*,int,struct gpio_keys_platform_data*,int) ; 

__attribute__((used)) static int FUNC4(struct ucb1x00_dev *dev)
{
	struct ucb1x00 *ucb = dev->ucb;
	struct platform_device *pdev;
	struct gpio_keys_platform_data keys;
	static struct gpio_keys_button buttons[6];
	unsigned i;

	FUNC2(buttons, 0, sizeof(buttons));
	FUNC2(&keys, 0, sizeof(keys));

	for (i = 0; i < FUNC0(buttons); i++) {
		buttons[i].code = BTN_0 + i;
		buttons[i].gpio = ucb->gpio.base + i;
		buttons[i].type = EV_KEY;
		buttons[i].can_disable = true;
	}

	keys.buttons = buttons;
	keys.nbuttons = FUNC0(buttons);
	keys.poll_interval = 50;
	keys.name = "ucb1x00";

	pdev = FUNC3(&ucb->dev, "gpio-keys", -1,
		&keys, sizeof(keys));

	FUNC1(&ucb->dev, &dev_attr_vbatt);
	FUNC1(&ucb->dev, &dev_attr_vcharger);
	FUNC1(&ucb->dev, &dev_attr_batt_temp);

	dev->priv = pdev;
	return 0;
}