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
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct bh1770_chip {int /*<<< orphan*/  prox_work; TYPE_1__* pdata; TYPE_3__* client; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* release_resources ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  bh1770_attribute_group ; 
 int /*<<< orphan*/  FUNC0 (struct bh1770_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bh1770_chip*) ; 
 struct bh1770_chip* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct bh1770_chip *chip = FUNC3(client);

	FUNC2(client->irq, chip);

	FUNC8(&chip->client->dev.kobj,
			&bh1770_attribute_group);

	if (chip->pdata->release_resources)
		chip->pdata->release_resources();

	FUNC1(&chip->prox_work);

	if (!FUNC6(&client->dev))
		FUNC0(chip);

	FUNC4(&client->dev);
	FUNC5(&client->dev);

	return 0;
}