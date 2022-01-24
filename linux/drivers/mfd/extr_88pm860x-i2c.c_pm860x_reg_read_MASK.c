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
struct regmap {int dummy; } ;
struct pm860x_chip {struct regmap* regmap_companion; struct regmap* regmap; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct pm860x_chip* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct regmap*,int,unsigned int*) ; 

int FUNC2(struct i2c_client *i2c, int reg)
{
	struct pm860x_chip *chip = FUNC0(i2c);
	struct regmap *map = (i2c == chip->client) ? chip->regmap
				: chip->regmap_companion;
	unsigned int data;
	int ret;

	ret = FUNC1(map, reg, &data);
	if (ret < 0)
		return ret;
	else
		return (int)data;
}