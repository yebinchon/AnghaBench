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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct as3722 {unsigned long irq_flags; int /*<<< orphan*/ * dev; int /*<<< orphan*/  irq_data; scalar_t__ en_ac_ok_pwr_on; int /*<<< orphan*/  chip_irq; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AS3722_CTRL_SEQU1_AC_OK_PWR_ON ; 
 int /*<<< orphan*/  AS3722_CTRL_SEQU1_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct as3722*) ; 
 int FUNC4 (struct as3722*) ; 
 int /*<<< orphan*/  as3722_devs ; 
 int FUNC5 (struct i2c_client*,struct as3722*) ; 
 int /*<<< orphan*/  as3722_irq_chip ; 
 int /*<<< orphan*/  as3722_regmap_config ; 
 int FUNC6 (struct as3722*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct as3722* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct as3722*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *i2c,
			const struct i2c_device_id *id)
{
	struct as3722 *as3722;
	unsigned long irq_flags;
	int ret;
	u8 val = 0;

	as3722 = FUNC10(&i2c->dev, sizeof(struct as3722), GFP_KERNEL);
	if (!as3722)
		return -ENOMEM;

	as3722->dev = &i2c->dev;
	as3722->chip_irq = i2c->irq;
	FUNC14(i2c, as3722);

	ret = FUNC5(i2c, as3722);
	if (ret < 0)
		return ret;

	as3722->regmap = FUNC13(i2c, &as3722_regmap_config);
	if (FUNC1(as3722->regmap)) {
		ret = FUNC2(as3722->regmap);
		FUNC8(&i2c->dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	ret = FUNC3(as3722);
	if (ret < 0)
		return ret;

	irq_flags = as3722->irq_flags | IRQF_ONESHOT;
	ret = FUNC12(as3722->dev, as3722->regmap,
				       as3722->chip_irq,
				       irq_flags, -1, &as3722_irq_chip,
				       &as3722->irq_data);
	if (ret < 0) {
		FUNC8(as3722->dev, "Failed to add regmap irq: %d\n", ret);
		return ret;
	}

	ret = FUNC4(as3722);
	if (ret < 0)
		return ret;

	if (as3722->en_ac_ok_pwr_on)
		val = AS3722_CTRL_SEQU1_AC_OK_PWR_ON;
	ret = FUNC6(as3722, AS3722_CTRL_SEQU1_REG,
			AS3722_CTRL_SEQU1_AC_OK_PWR_ON, val);
	if (ret < 0) {
		FUNC8(as3722->dev, "CTRLsequ1 update failed: %d\n", ret);
		return ret;
	}

	ret = FUNC11(&i2c->dev, -1, as3722_devs,
				   FUNC0(as3722_devs), NULL, 0,
				   FUNC15(as3722->irq_data));
	if (ret) {
		FUNC8(as3722->dev, "Failed to add MFD devices: %d\n", ret);
		return ret;
	}

	FUNC9(as3722->dev, true);

	FUNC7(as3722->dev, "AS3722 core driver initialized successfully\n");
	return 0;
}