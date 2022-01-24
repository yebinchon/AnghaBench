#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_6__ {int low_frequency; int /*<<< orphan*/ * dev; int /*<<< orphan*/  device_name; int /*<<< orphan*/  device_kind; } ;
struct TYPE_5__ {int /*<<< orphan*/  mb_off_out; int /*<<< orphan*/  mb_size_out; int /*<<< orphan*/  mb_off_in; int /*<<< orphan*/  mb_size_in; int /*<<< orphan*/  lock; } ;
struct mlxsw_i2c {TYPE_3__ bus_info; int /*<<< orphan*/ * dev; TYPE_2__ cmd; scalar_t__ block_size; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; TYPE_1__* adapter; } ;
struct i2c_adapter_quirks {scalar_t__ max_read_len; scalar_t__ max_write_len; } ;
struct TYPE_4__ {struct i2c_adapter_quirks* quirks; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLXSW_I2C_BLK_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_i2c* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct mlxsw_i2c*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,struct mlxsw_i2c*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_i2c_bus ; 
 int FUNC7 (struct i2c_client*,struct mlxsw_i2c*) ; 
 int FUNC8 (struct i2c_client*,struct mlxsw_i2c*,scalar_t__*) ; 
 int FUNC9 (struct i2c_client*,struct mlxsw_i2c*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u16 ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	const struct i2c_adapter_quirks *quirks = client->adapter->quirks;
	struct mlxsw_i2c *mlxsw_i2c;
	u8 status;
	int err;

	mlxsw_i2c = FUNC2(&client->dev, sizeof(*mlxsw_i2c), GFP_KERNEL);
	if (!mlxsw_i2c)
		return -ENOMEM;

	if (quirks) {
		if ((quirks->max_read_len &&
		     quirks->max_read_len < MLXSW_I2C_BLK_DEF) ||
		    (quirks->max_write_len &&
		     quirks->max_write_len < MLXSW_I2C_BLK_DEF)) {
			FUNC0(&client->dev, "Insufficient transaction buffer length\n");
			return -EOPNOTSUPP;
		}

		mlxsw_i2c->block_size = FUNC4(u16, MLXSW_I2C_BLK_DEF,
					      FUNC5(u16, quirks->max_read_len,
						    quirks->max_write_len));
	} else {
		mlxsw_i2c->block_size = MLXSW_I2C_BLK_DEF;
	}

	FUNC3(client, mlxsw_i2c);
	FUNC10(&mlxsw_i2c->cmd.lock);

	/* In order to use mailboxes through the i2c, special area is reserved
	 * on the i2c address space that can be used for input and output
	 * mailboxes. Such mailboxes are called local mailboxes. When using a
	 * local mailbox, software should specify 0 as the Input/Output
	 * parameters. The location of the Local Mailbox addresses on the i2c
	 * space can be retrieved through the QUERY_FW command.
	 * For this purpose QUERY_FW is to be issued with opcode modifier equal
	 * 0x01. For such command the output parameter is an immediate value.
	 * Here QUERY_FW command is invoked for ASIC probing and for getting
	 * local mailboxes addresses from immedate output parameters.
	 */

	/* Prepare and write out Command Interface Register for transaction */
	err = FUNC9(client, mlxsw_i2c, 1);
	if (err) {
		FUNC0(&client->dev, "Could not start transaction");
		goto errout;
	}

	/* Wait until go bit is cleared. */
	err = FUNC8(client, mlxsw_i2c, &status);
	if (err) {
		FUNC0(&client->dev, "HW semaphore is not released");
		goto errout;
	}

	/* Validate transaction completion status. */
	if (status) {
		FUNC0(&client->dev, "Bad transaction completion status %x\n",
			status);
		err = -EIO;
		goto errout;
	}

	/* Get mailbox offsets. */
	err = FUNC7(client, mlxsw_i2c);
	if (err < 0) {
		FUNC0(&client->dev, "Fail to get mailboxes\n");
		goto errout;
	}

	FUNC1(&client->dev, "%s mb size=%x off=0x%08x out mb size=%x off=0x%08x\n",
		 id->name, mlxsw_i2c->cmd.mb_size_in,
		 mlxsw_i2c->cmd.mb_off_in, mlxsw_i2c->cmd.mb_size_out,
		 mlxsw_i2c->cmd.mb_off_out);

	/* Register device bus. */
	mlxsw_i2c->bus_info.device_kind = id->name;
	mlxsw_i2c->bus_info.device_name = client->name;
	mlxsw_i2c->bus_info.dev = &client->dev;
	mlxsw_i2c->bus_info.low_frequency = true;
	mlxsw_i2c->dev = &client->dev;

	err = FUNC6(&mlxsw_i2c->bus_info,
					     &mlxsw_i2c_bus, mlxsw_i2c, false,
					     NULL);
	if (err) {
		FUNC0(&client->dev, "Fail to register core bus\n");
		return err;
	}

	return 0;

errout:
	FUNC3(client, NULL);

	return err;
}