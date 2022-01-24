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
struct tps65010_board {int (* teardown ) (struct i2c_client*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; } ;
struct tps65010 {int /*<<< orphan*/  file; int /*<<< orphan*/  work; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int) ; 
 struct tps65010_board* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct tps65010*) ; 
 struct tps65010* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * the_tps ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct tps65010		*tps = FUNC5(client);
	struct tps65010_board	*board = FUNC3(&client->dev);

	if (board && board->teardown) {
		int status = board->teardown(client, board->context);
		if (status < 0)
			FUNC2(&client->dev, "board %s %s err %d\n",
				"teardown", client->name, status);
	}
	if (client->irq > 0)
		FUNC4(client->irq, tps);
	FUNC0(&tps->work);
	FUNC1(tps->file);
	the_tps = NULL;
	return 0;
}