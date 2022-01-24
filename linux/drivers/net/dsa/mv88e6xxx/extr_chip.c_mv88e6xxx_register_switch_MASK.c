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
struct mv88e6xxx_chip {TYPE_1__* info; struct device* dev; } ;
struct dsa_switch {int ageing_time_min; int ageing_time_max; int /*<<< orphan*/ * ops; struct device* dev; struct mv88e6xxx_chip* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int age_time_coeff; } ;

/* Variables and functions */
 int ENOMEM ; 
 int U8_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct dsa_switch*) ; 
 int FUNC1 (struct dsa_switch*) ; 
 struct dsa_switch* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  mv88e6xxx_switch_ops ; 

__attribute__((used)) static int FUNC4(struct mv88e6xxx_chip *chip)
{
	struct device *dev = chip->dev;
	struct dsa_switch *ds;

	ds = FUNC2(dev, FUNC3(chip));
	if (!ds)
		return -ENOMEM;

	ds->priv = chip;
	ds->dev = dev;
	ds->ops = &mv88e6xxx_switch_ops;
	ds->ageing_time_min = chip->info->age_time_coeff;
	ds->ageing_time_max = chip->info->age_time_coeff * U8_MAX;

	FUNC0(dev, ds);

	return FUNC1(ds);
}