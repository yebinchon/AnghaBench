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
struct tc3589x_platform_data {int dummy; } ;
struct tc3589x {int num_gpio; TYPE_1__* dev; struct i2c_client* i2c; struct tc3589x_platform_data* pdata; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;
struct device_node {int dummy; } ;
typedef  enum tc3589x_version { ____Placeholder_tc3589x_version } tc3589x_version ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (struct tc3589x_platform_data*) ; 
 int FUNC1 (struct tc3589x_platform_data*) ; 
#define  TC3589X_TC35890 134 
#define  TC3589X_TC35892 133 
#define  TC3589X_TC35893 132 
#define  TC3589X_TC35894 131 
#define  TC3589X_TC35895 130 
#define  TC3589X_TC35896 129 
#define  TC3589X_UNKNOWN 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct tc3589x_platform_data* FUNC3 (TYPE_1__*) ; 
 struct tc3589x* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct tc3589x*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct tc3589x*) ; 
 int FUNC9 (struct tc3589x*) ; 
 int FUNC10 (struct tc3589x*) ; 
 int /*<<< orphan*/  tc3589x_irq ; 
 int FUNC11 (struct tc3589x*,struct device_node*) ; 
 struct tc3589x_platform_data* FUNC12 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
				   const struct i2c_device_id *id)
{
	struct device_node *np = i2c->dev.of_node;
	struct tc3589x_platform_data *pdata = FUNC3(&i2c->dev);
	struct tc3589x *tc3589x;
	enum tc3589x_version version;
	int ret;

	if (!pdata) {
		pdata = FUNC12(&i2c->dev, &version);
		if (FUNC0(pdata)) {
			FUNC2(&i2c->dev, "No platform data or DT found\n");
			return FUNC1(pdata);
		}
	} else {
		/* When not probing from device tree we have this ID */
		version = id->driver_data;
	}

	if (!FUNC5(i2c->adapter, I2C_FUNC_SMBUS_BYTE_DATA
				     | I2C_FUNC_SMBUS_I2C_BLOCK))
		return -EIO;

	tc3589x = FUNC4(&i2c->dev, sizeof(struct tc3589x),
				GFP_KERNEL);
	if (!tc3589x)
		return -ENOMEM;

	FUNC7(&tc3589x->lock);

	tc3589x->dev = &i2c->dev;
	tc3589x->i2c = i2c;
	tc3589x->pdata = pdata;

	switch (version) {
	case TC3589X_TC35893:
	case TC3589X_TC35895:
	case TC3589X_TC35896:
		tc3589x->num_gpio = 20;
		break;
	case TC3589X_TC35890:
	case TC3589X_TC35892:
	case TC3589X_TC35894:
	case TC3589X_UNKNOWN:
	default:
		tc3589x->num_gpio = 24;
		break;
	}

	FUNC6(i2c, tc3589x);

	ret = FUNC9(tc3589x);
	if (ret)
		return ret;

	ret = FUNC11(tc3589x, np);
	if (ret)
		return ret;

	ret = FUNC8(tc3589x->i2c->irq, NULL, tc3589x_irq,
				   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				   "tc3589x", tc3589x);
	if (ret) {
		FUNC2(tc3589x->dev, "failed to request IRQ: %d\n", ret);
		return ret;
	}

	ret = FUNC10(tc3589x);
	if (ret) {
		FUNC2(tc3589x->dev, "failed to add child devices\n");
		return ret;
	}

	return 0;
}