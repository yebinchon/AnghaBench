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
struct i2c_client {int dummy; } ;
struct ef4_nic {int dummy; } ;
struct TYPE_2__ {struct i2c_client* hwmon_client; struct i2c_client* ioexp_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX664X_REG_RSL ; 
 int /*<<< orphan*/  P0_CONFIG ; 
 int /*<<< orphan*/  P0_OUT ; 
 int /*<<< orphan*/  P1_CONFIG ; 
 TYPE_1__* FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ef4_nic *efx)
{
	struct i2c_client *ioexp_client = FUNC0(efx)->ioexp_client;
	struct i2c_client *hwmon_client = FUNC0(efx)->hwmon_client;

	/* Turn off all power rails and disable outputs */
	FUNC2(ioexp_client, P0_OUT, 0xff);
	FUNC2(ioexp_client, P1_CONFIG, 0xff);
	FUNC2(ioexp_client, P0_CONFIG, 0xff);

	/* Clear any over-temperature alert */
	FUNC1(hwmon_client, MAX664X_REG_RSL);
}