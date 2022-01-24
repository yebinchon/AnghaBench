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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int mb_off_in; } ;
struct mlxsw_i2c {size_t block_size; TYPE_1__ cmd; } ;
struct i2c_msg {scalar_t__ len; int /*<<< orphan*/ * buf; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MLXSW_I2C_ADDR_BUF_SIZE ; 
 scalar_t__ MLXSW_I2C_ADDR_WIDTH ; 
 int /*<<< orphan*/  MLXSW_I2C_PUSH_CMD_SIZE ; 
 int /*<<< orphan*/  MLXSW_I2C_RETRY ; 
 int /*<<< orphan*/  MLXSW_I2C_TIMEOUT_MSECS ; 
 struct i2c_msg FUNC0 (struct i2c_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct mlxsw_i2c* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct i2c_client*,struct mlxsw_i2c*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct i2c_client*,struct mlxsw_i2c*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 
 struct i2c_client* FUNC13 (struct device*) ; 

__attribute__((used)) static int
FUNC14(struct device *dev, size_t in_mbox_size, u8 *in_mbox, int num,
		u8 *p_status)
{
	struct i2c_client *client = FUNC13(dev);
	struct mlxsw_i2c *mlxsw_i2c = FUNC3(client);
	unsigned long timeout = FUNC11(MLXSW_I2C_TIMEOUT_MSECS);
	int off = mlxsw_i2c->cmd.mb_off_in, chunk_size, i, j;
	unsigned long end;
	u8 *tran_buf;
	struct i2c_msg write_tran =
		FUNC0(client, NULL, MLXSW_I2C_PUSH_CMD_SIZE);
	int err;

	tran_buf = FUNC6(mlxsw_i2c->block_size + MLXSW_I2C_ADDR_BUF_SIZE,
			   GFP_KERNEL);
	if (!tran_buf)
		return -ENOMEM;

	write_tran.buf = tran_buf;
	for (i = 0; i < num; i++) {
		chunk_size = (in_mbox_size > mlxsw_i2c->block_size) ?
			     mlxsw_i2c->block_size : in_mbox_size;
		write_tran.len = MLXSW_I2C_ADDR_WIDTH + chunk_size;
		FUNC8(tran_buf, off);
		FUNC7(&tran_buf[MLXSW_I2C_ADDR_BUF_SIZE], in_mbox +
		       mlxsw_i2c->block_size * i, chunk_size);

		j = 0;
		end = jiffies + timeout;
		do {
			err = FUNC4(client->adapter, &write_tran, 1);
			if (err == 1)
				break;

			FUNC1();
		} while ((FUNC12(jiffies, end)) ||
			 (j++ < MLXSW_I2C_RETRY));

		if (err != 1) {
			if (!err) {
				err = -EIO;
				goto mlxsw_i2c_write_exit;
			}
		}

		off += chunk_size;
		in_mbox_size -= chunk_size;
	}

	/* Prepare and write out Command Interface Register for transaction. */
	err = FUNC10(client, mlxsw_i2c, 0);
	if (err) {
		FUNC2(&client->dev, "Could not start transaction");
		err = -EIO;
		goto mlxsw_i2c_write_exit;
	}

	/* Wait until go bit is cleared. */
	err = FUNC9(client, mlxsw_i2c, p_status);
	if (err) {
		FUNC2(&client->dev, "HW semaphore is not released");
		goto mlxsw_i2c_write_exit;
	}

	/* Validate transaction completion status. */
	if (*p_status) {
		FUNC2(&client->dev, "Bad transaction completion status %x\n",
			*p_status);
		err = -EIO;
	}

mlxsw_i2c_write_exit:
	FUNC5(tran_buf);
	return err;
}