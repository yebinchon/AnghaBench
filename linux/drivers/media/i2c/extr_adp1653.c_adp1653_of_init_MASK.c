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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct adp1653_platform_data {int max_flash_timeout; int max_flash_intensity; int max_torch_intensity; int max_indicator_intensity; int /*<<< orphan*/  enable_gpio; } ;
struct adp1653_flash {struct adp1653_platform_data* platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct adp1653_platform_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC5 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			   struct adp1653_flash *flash,
			   struct device_node *node)
{
	struct adp1653_platform_data *pd;
	struct device_node *child;

	pd = FUNC4(&client->dev, sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;
	flash->platform_data = pd;

	child = FUNC5(node, "flash");
	if (!child)
		return -EINVAL;

	if (FUNC7(child, "flash-timeout-us",
				 &pd->max_flash_timeout))
		goto err;

	if (FUNC7(child, "flash-max-microamp",
				 &pd->max_flash_intensity))
		goto err;

	pd->max_flash_intensity /= 1000;

	if (FUNC7(child, "led-max-microamp",
				 &pd->max_torch_intensity))
		goto err;

	pd->max_torch_intensity /= 1000;
	FUNC6(child);

	child = FUNC5(node, "indicator");
	if (!child)
		return -EINVAL;

	if (FUNC7(child, "led-max-microamp",
				 &pd->max_indicator_intensity))
		goto err;

	FUNC6(child);

	pd->enable_gpio = FUNC3(&client->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(pd->enable_gpio)) {
		FUNC2(&client->dev, "Error getting GPIO\n");
		return FUNC1(pd->enable_gpio);
	}

	return 0;
err:
	FUNC2(&client->dev, "Required property not found\n");
	FUNC6(child);
	return -EINVAL;
}