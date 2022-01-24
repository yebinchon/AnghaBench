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
struct menelaus_chip {int /*<<< orphan*/  work; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct menelaus_chip*) ; 
 struct menelaus_chip* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/ * the_menelaus ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct menelaus_chip	*menelaus = FUNC2(client);

	FUNC1(client->irq, menelaus);
	FUNC0(&menelaus->work);
	the_menelaus = NULL;
	return 0;
}