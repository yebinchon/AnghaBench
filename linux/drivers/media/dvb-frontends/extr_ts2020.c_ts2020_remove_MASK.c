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
struct ts2020_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  stat_work; int /*<<< orphan*/  dont_poll; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ts2020_priv* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct ts2020_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct ts2020_priv *dev = FUNC2(client);

	FUNC1(&client->dev, "\n");

	/* stop statistics polling */
	if (!dev->dont_poll)
		FUNC0(&dev->stat_work);

	FUNC4(dev->regmap);
	FUNC3(dev);
	return 0;
}