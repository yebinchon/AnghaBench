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
struct regmap_config {int dummy; } ;
struct device {int dummy; } ;
struct regmap {scalar_t__ addr; int /*<<< orphan*/  adapter; struct device dev; } ;
struct i2c_client {scalar_t__ addr; int /*<<< orphan*/  adapter; struct device dev; } ;
struct at24_data {TYPE_1__* client; } ;
struct TYPE_2__ {struct regmap* regmap; struct regmap* client; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct device*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct regmap* FUNC3 (struct regmap*,struct regmap_config*) ; 

__attribute__((used)) static int FUNC4(struct at24_data *at24, unsigned int index,
				  struct regmap_config *regmap_config)
{
	struct i2c_client *base_client, *dummy_client;
	struct regmap *regmap;
	struct device *dev;

	base_client = at24->client[0].client;
	dev = &base_client->dev;

	dummy_client = FUNC2(dev, base_client->adapter,
						 base_client->addr + index);
	if (FUNC0(dummy_client))
		return FUNC1(dummy_client);

	regmap = FUNC3(dummy_client, regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	at24->client[index].client = dummy_client;
	at24->client[index].regmap = regmap;

	return 0;
}