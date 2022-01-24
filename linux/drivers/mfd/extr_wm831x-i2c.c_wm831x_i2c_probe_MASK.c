#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wm831x_pdata {int dummy; } ;
struct wm831x {int type; int /*<<< orphan*/  pdata; TYPE_1__* dev; int /*<<< orphan*/  regmap; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
typedef  enum wm831x_parent { ____Placeholder_wm831x_parent } wm831x_parent ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct wm831x_pdata* FUNC3 (TYPE_1__*) ; 
 struct wm831x* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct wm831x*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wm831x_pdata*,int) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm831x_of_match ; 
 int /*<<< orphan*/  wm831x_regmap_config ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm831x_pdata *pdata = FUNC3(&i2c->dev);
	const struct of_device_id *of_id;
	struct wm831x *wm831x;
	enum wm831x_parent type;
	int ret;

	if (i2c->dev.of_node) {
		of_id = FUNC8(wm831x_of_match, &i2c->dev);
		if (!of_id) {
			FUNC2(&i2c->dev, "Failed to match device\n");
			return -ENODEV;
		}
		type = (enum wm831x_parent)of_id->data;
	} else {
		type = (enum wm831x_parent)id->driver_data;
	}

	wm831x = FUNC4(&i2c->dev, sizeof(struct wm831x), GFP_KERNEL);
	if (wm831x == NULL)
		return -ENOMEM;

	FUNC6(i2c, wm831x);
	wm831x->dev = &i2c->dev;
	wm831x->type = type;

	wm831x->regmap = FUNC5(i2c, &wm831x_regmap_config);
	if (FUNC0(wm831x->regmap)) {
		ret = FUNC1(wm831x->regmap);
		FUNC2(wm831x->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	if (pdata)
		FUNC7(&wm831x->pdata, pdata, sizeof(*pdata));

	return FUNC9(wm831x, i2c->irq);
}