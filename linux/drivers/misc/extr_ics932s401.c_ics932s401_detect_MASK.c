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
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int ICS932S401_DEVICE ; 
 int /*<<< orphan*/  ICS932S401_REG_DEVICE ; 
 int /*<<< orphan*/  ICS932S401_REG_VENDOR_REV ; 
 int ICS932S401_REV ; 
 int ICS932S401_REV_SHIFT ; 
 int ICS932S401_VENDOR ; 
 int ICS932S401_VENDOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int vendor, device, revision;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	vendor = FUNC2(client, ICS932S401_REG_VENDOR_REV);
	vendor >>= 8;
	revision = vendor >> ICS932S401_REV_SHIFT;
	vendor &= ICS932S401_VENDOR_MASK;
	if (vendor != ICS932S401_VENDOR)
		return -ENODEV;

	device = FUNC2(client, ICS932S401_REG_DEVICE);
	device >>= 8;
	if (device != ICS932S401_DEVICE)
		return -ENODEV;

	if (revision != ICS932S401_REV)
		FUNC0(&adapter->dev, "Unknown revision %d\n", revision);

	FUNC3(info->type, "ics932s401", I2C_NAME_SIZE);

	return 0;
}