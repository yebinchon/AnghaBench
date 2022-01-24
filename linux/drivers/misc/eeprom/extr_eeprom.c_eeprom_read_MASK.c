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
struct kobject {int dummy; } ;
struct i2c_client {int dummy; } ;
struct file {int dummy; } ;
struct eeprom_data {scalar_t__ nature; char* data; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ VAIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int) ; 
 struct eeprom_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct file *filp, struct kobject *kobj,
			   struct bin_attribute *bin_attr,
			   char *buf, loff_t off, size_t count)
{
	struct i2c_client *client = FUNC5(FUNC3(kobj));
	struct eeprom_data *data = FUNC2(client);
	u8 slice;

	/* Only refresh slices which contain requested bytes */
	for (slice = off >> 5; slice <= (off + count - 1) >> 5; slice++)
		FUNC1(client, slice);

	/* Hide Vaio private settings to regular users:
	   - BIOS passwords: bytes 0x00 to 0x0f
	   - UUID: bytes 0x10 to 0x1f
	   - Serial number: 0xc0 to 0xdf */
	if (data->nature == VAIO && !FUNC0(CAP_SYS_ADMIN)) {
		int i;

		for (i = 0; i < count; i++) {
			if ((off + i <= 0x1f) ||
			    (off + i >= 0xc0 && off + i <= 0xdf))
				buf[i] = 0;
			else
				buf[i] = data->data[off + i];
		}
	} else {
		FUNC4(buf, &data->data[off], count);
	}

	return count;
}