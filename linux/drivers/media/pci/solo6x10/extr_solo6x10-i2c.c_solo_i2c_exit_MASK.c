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
struct solo_dev {TYPE_1__* i2c_adap; } ;
struct TYPE_2__ {int /*<<< orphan*/ * algo_data; } ;

/* Variables and functions */
 int SOLO_I2C_ADAPTERS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(struct solo_dev *solo_dev)
{
	int i;

	for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
		if (!solo_dev->i2c_adap[i].algo_data)
			continue;
		FUNC0(&solo_dev->i2c_adap[i]);
		solo_dev->i2c_adap[i].algo_data = NULL;
	}
}