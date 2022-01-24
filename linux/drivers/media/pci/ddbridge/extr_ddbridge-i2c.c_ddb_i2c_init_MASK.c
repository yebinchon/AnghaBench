#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct i2c_adapter {int dummy; } ;
struct ddb_regmap {size_t irq_base_i2c; TYPE_1__* i2c; } ;
struct ddb_i2c {struct i2c_adapter adap; } ;
struct ddb {size_t i2c_num; struct ddb_i2c* i2c; TYPE_3__* link; } ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_5__ {int i2c_mask; struct ddb_regmap* regmap; } ;
struct TYPE_4__ {size_t num; } ;

/* Variables and functions */
 size_t DDB_MAX_LINK ; 
 int FUNC0 (struct ddb*,struct ddb_i2c*,struct ddb_regmap const*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb*,size_t,size_t,int /*<<< orphan*/ ,struct ddb_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_handler ; 

int FUNC3(struct ddb *dev)
{
	int stat = 0;
	u32 i, j, num = 0, l, base;
	struct ddb_i2c *i2c;
	struct i2c_adapter *adap;
	const struct ddb_regmap *regmap;

	for (l = 0; l < DDB_MAX_LINK; l++) {
		if (!dev->link[l].info)
			continue;
		regmap = dev->link[l].info->regmap;
		if (!regmap || !regmap->i2c)
			continue;
		base = regmap->irq_base_i2c;
		for (i = 0; i < regmap->i2c->num; i++) {
			if (!(dev->link[l].info->i2c_mask & (1 << i)))
				continue;
			i2c = &dev->i2c[num];
			FUNC1(dev, l, i + base, i2c_handler, i2c);
			stat = FUNC0(dev, i2c, regmap, l, i, num);
			if (stat)
				break;
			num++;
		}
	}
	if (stat) {
		for (j = 0; j < num; j++) {
			i2c = &dev->i2c[j];
			adap = &i2c->adap;
			FUNC2(adap);
		}
	} else {
		dev->i2c_num = num;
	}

	return stat;
}