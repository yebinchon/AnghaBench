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
struct cx231xx_i2c {int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  i2c_rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct cx231xx_i2c *bus)
{
	if (!bus->i2c_rc)
		FUNC0(&bus->i2c_adap);
}