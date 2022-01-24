#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wm8994 {int type; TYPE_1__* dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
typedef  enum wm8994_type { ____Placeholder_wm8994_type } wm8994_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct wm8994* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct wm8994*) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  wm8994_base_regmap_config ; 
 int FUNC7 (struct wm8994*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8994_of_match ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
				      const struct i2c_device_id *id)
{
	const struct of_device_id *of_id;
	struct wm8994 *wm8994;
	int ret;

	wm8994 = FUNC3(&i2c->dev, sizeof(struct wm8994), GFP_KERNEL);
	if (wm8994 == NULL)
		return -ENOMEM;

	FUNC5(i2c, wm8994);
	wm8994->dev = &i2c->dev;
	wm8994->irq = i2c->irq;

	if (i2c->dev.of_node) {
		of_id = FUNC6(wm8994_of_match, &i2c->dev);
		if (of_id)
			wm8994->type = (enum wm8994_type)of_id->data;
	} else {
		wm8994->type = id->driver_data;
	}

	wm8994->regmap = FUNC4(i2c, &wm8994_base_regmap_config);
	if (FUNC0(wm8994->regmap)) {
		ret = FUNC1(wm8994->regmap);
		FUNC2(wm8994->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	return FUNC7(wm8994, i2c->irq);
}