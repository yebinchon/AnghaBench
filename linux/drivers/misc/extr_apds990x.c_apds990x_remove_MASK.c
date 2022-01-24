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
struct apds990x_chip {int /*<<< orphan*/  regs; TYPE_2__* pdata; TYPE_1__* client; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* release_resources ) () ;} ;
struct TYPE_4__ {TYPE_3__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apds990x_attribute_group ; 
 int /*<<< orphan*/  FUNC1 (struct apds990x_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct apds990x_chip*) ; 
 struct apds990x_chip* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct apds990x_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct apds990x_chip *chip = FUNC3(client);

	FUNC2(client->irq, chip);
	FUNC10(&chip->client->dev.kobj,
			apds990x_attribute_group);

	if (chip->pdata && chip->pdata->release_resources)
		chip->pdata->release_resources();

	if (!FUNC7(&client->dev))
		FUNC1(chip);

	FUNC5(&client->dev);
	FUNC6(&client->dev);

	FUNC8(FUNC0(chip->regs), chip->regs);

	FUNC4(chip);
	return 0;
}