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
struct tps65086 {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct tps65086* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct tps65086 *tps = FUNC0(client);

	FUNC1(tps->irq, tps->irq_data);

	return 0;
}