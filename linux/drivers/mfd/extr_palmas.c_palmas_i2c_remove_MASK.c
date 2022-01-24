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
struct palmas {scalar_t__* i2c_clients; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int PALMAS_NUM_CLIENTS ; 
 struct palmas* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct palmas* palmas_dev ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c)
{
	struct palmas *palmas = FUNC0(i2c);
	int i;

	FUNC2(palmas->irq, palmas->irq_data);

	for (i = 1; i < PALMAS_NUM_CLIENTS; i++) {
		if (palmas->i2c_clients[i])
			FUNC1(palmas->i2c_clients[i]);
	}

	if (palmas == palmas_dev) {
		pm_power_off = NULL;
		palmas_dev = NULL;
	}

	return 0;
}