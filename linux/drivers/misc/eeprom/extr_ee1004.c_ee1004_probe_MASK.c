#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_4__ dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_10__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 scalar_t__ EE1004_ADDR_SET_PAGE ; 
 int /*<<< orphan*/  EE1004_EEPROM_SIZE ; 
 int EOPNOTSUPP ; 
 int EPFNOSUPPORT ; 
 int I2C_FUNC_SMBUS_READ_BYTE ; 
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,char const*) ; 
 int /*<<< orphan*/  ee1004_bus_lock ; 
 int ee1004_current_page ; 
 int ee1004_dev_count ; 
 int FUNC6 () ; 
 TYPE_1__** ee1004_set_page ; 
 int /*<<< orphan*/  eeprom_attr ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int err, cnr = 0;
	const char *slow = NULL;

	/* Make sure we can operate on this adapter */
	if (!FUNC8(client->adapter,
				     I2C_FUNC_SMBUS_READ_BYTE |
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
		if (FUNC8(client->adapter,
				     I2C_FUNC_SMBUS_READ_BYTE |
				     I2C_FUNC_SMBUS_READ_WORD_DATA))
			slow = "word";
		else if (FUNC8(client->adapter,
				     I2C_FUNC_SMBUS_READ_BYTE |
				     I2C_FUNC_SMBUS_READ_BYTE_DATA))
			slow = "byte";
		else
			return -EPFNOSUPPORT;
	}

	/* Use 2 dummy devices for page select command */
	FUNC11(&ee1004_bus_lock);
	if (++ee1004_dev_count == 1) {
		for (cnr = 0; cnr < 2; cnr++) {
			ee1004_set_page[cnr] = FUNC9(client->adapter,
						EE1004_ADDR_SET_PAGE + cnr);
			if (FUNC0(ee1004_set_page[cnr])) {
				FUNC3(&client->dev,
					"address 0x%02x unavailable\n",
					EE1004_ADDR_SET_PAGE + cnr);
				err = FUNC1(ee1004_set_page[cnr]);
				goto err_clients;
			}
		}
	} else if (FUNC7(client->adapter) !=
		   FUNC7(ee1004_set_page[0]->adapter)) {
		FUNC3(&client->dev,
			"Driver only supports devices on a single I2C bus\n");
		err = -EOPNOTSUPP;
		goto err_clients;
	}

	/* Remember current page to avoid unneeded page select */
	err = FUNC6();
	if (err < 0)
		goto err_clients;
	ee1004_current_page = err;
	FUNC2(&client->dev, "Currently selected page: %d\n",
		ee1004_current_page);
	FUNC12(&ee1004_bus_lock);

	/* Create the sysfs eeprom file */
	err = FUNC13(&client->dev.kobj, &eeprom_attr);
	if (err)
		goto err_clients_lock;

	FUNC4(&client->dev,
		 "%u byte EE1004-compliant SPD EEPROM, read-only\n",
		 EE1004_EEPROM_SIZE);
	if (slow)
		FUNC5(&client->dev,
			   "Falling back to %s reads, performance will suffer\n",
			   slow);

	return 0;

 err_clients_lock:
	FUNC11(&ee1004_bus_lock);
 err_clients:
	if (--ee1004_dev_count == 0) {
		for (cnr--; cnr >= 0; cnr--) {
			FUNC10(ee1004_set_page[cnr]);
			ee1004_set_page[cnr] = NULL;
		}
	}
	FUNC12(&ee1004_bus_lock);

	return err;
}