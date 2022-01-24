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
struct tps65217 {int /*<<< orphan*/ * irq_domain; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int TPS65217_NUM_IRQ ; 
 struct tps65217* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct tps65217 *tps = FUNC0(client);
	unsigned int virq;
	int i;

	for (i = 0; i < TPS65217_NUM_IRQ; i++) {
		virq = FUNC3(tps->irq_domain, i);
		if (virq)
			FUNC1(virq);
	}

	FUNC2(tps->irq_domain);
	tps->irq_domain = NULL;

	return 0;
}