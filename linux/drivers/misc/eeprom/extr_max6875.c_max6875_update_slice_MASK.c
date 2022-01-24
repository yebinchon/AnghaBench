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
typedef  int u8 ;
struct max6875_data {int* data; int valid; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * last_updated; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  MAX6875_CMD_BLK_READ ; 
 int SLICE_BITS ; 
 int SLICE_SIZE ; 
 int USER_EEPROM_BASE ; 
 int USER_EEPROM_SLICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max6875_data* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC6 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct i2c_client *client, int slice)
{
	struct max6875_data *data = FUNC3(client);
	int i, j, addr;
	u8 *buf;

	if (slice >= USER_EEPROM_SLICES)
		return;

	FUNC7(&data->update_lock);

	buf = &data->data[slice << SLICE_BITS];

	if (!(data->valid & (1 << slice)) ||
	    FUNC9(jiffies, data->last_updated[slice])) {

		FUNC0(&client->dev, "Starting update of slice %u\n", slice);

		data->valid &= ~(1 << slice);

		addr = USER_EEPROM_BASE + (slice << SLICE_BITS);

		/* select the eeprom address */
		if (FUNC6(client, addr >> 8, addr & 0xFF)) {
			FUNC1(&client->dev, "address set failed\n");
			goto exit_up;
		}

		if (FUNC2(client->adapter,
					    I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
			if (FUNC5(client,
							  MAX6875_CMD_BLK_READ,
							  SLICE_SIZE,
							  buf) != SLICE_SIZE) {
				goto exit_up;
			}
		} else {
			for (i = 0; i < SLICE_SIZE; i++) {
				j = FUNC4(client);
				if (j < 0) {
					goto exit_up;
				}
				buf[i] = j;
			}
		}
		data->last_updated[slice] = jiffies;
		data->valid |= (1 << slice);
	}
exit_up:
	FUNC8(&data->update_lock);
}