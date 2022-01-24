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
typedef  int /*<<< orphan*/  u16 ;
struct si476x_core {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct si476x_core* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct si476x_core*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static bool FUNC3(struct device *dev,
						 unsigned int reg)
{
	struct i2c_client *client = FUNC2(dev);
	struct si476x_core *core = FUNC0(client);

	return FUNC1(core, (u16) reg);

}