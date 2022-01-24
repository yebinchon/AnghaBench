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
struct rn5t618 {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct rn5t618* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/ * pm_power_off ; 
 struct rn5t618* rn5t618_pm_power_off ; 
 int /*<<< orphan*/  rn5t618_restart_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *i2c)
{
	struct rn5t618 *priv = FUNC0(i2c);

	if (priv == rn5t618_pm_power_off) {
		rn5t618_pm_power_off = NULL;
		pm_power_off = NULL;
	}

	FUNC1(&rn5t618_restart_handler);

	return 0;
}