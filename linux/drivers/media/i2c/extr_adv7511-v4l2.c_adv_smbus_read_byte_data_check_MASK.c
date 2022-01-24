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
union i2c_smbus_data {int byte; } ;
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  adapter; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC2(struct i2c_client *client,
					  u8 command, bool check)
{
	union i2c_smbus_data data;

	if (!FUNC0(client->adapter, client->addr, client->flags,
			    I2C_SMBUS_READ, command,
			    I2C_SMBUS_BYTE_DATA, &data))
		return data.byte;
	if (check)
		FUNC1(client, "error reading %02x, %02x\n",
			client->addr, command);
	return -1;
}