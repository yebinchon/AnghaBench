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
struct tps6586x {int /*<<< orphan*/  dev; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct tps6586x*) ; 
 struct tps6586x* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tps6586x*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct tps6586x *tps6586x = FUNC1(client);

	FUNC3(tps6586x);
	FUNC2(tps6586x->dev);
	if (client->irq)
		FUNC0(client->irq, tps6586x);
	return 0;
}