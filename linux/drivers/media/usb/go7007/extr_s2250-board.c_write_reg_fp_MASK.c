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
typedef  scalar_t__ u8 ;
typedef  unsigned int u16 ;
struct s2250 {unsigned int reg12b_val; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct go7007_usb {int /*<<< orphan*/  i2c_lock; } ;
struct go7007 {scalar_t__ status; struct go7007_usb* hpi_context; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int EINTR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STATUS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct go7007*,int,unsigned int,unsigned int,scalar_t__*,int,int) ; 
 struct go7007* FUNC2 (int /*<<< orphan*/ ) ; 
 struct s2250* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client, u16 addr, u16 val)
{
	struct go7007 *go = FUNC2(client->adapter);
	struct go7007_usb *usb;
	int rc;
	u8 *buf;
	struct s2250 *dec = FUNC3(client);

	if (go == NULL)
		return -ENODEV;

	if (go->status == STATUS_SHUTDOWN)
		return -EBUSY;

	buf = FUNC5(16, GFP_KERNEL);

	if (buf == NULL)
		return -ENOMEM;



	FUNC6(buf, 0xcd, 6);

	usb = go->hpi_context;
	if (FUNC7(&usb->i2c_lock) != 0) {
		FUNC0(&client->dev, "i2c lock failed\n");
		FUNC4(buf);
		return -EINTR;
	}
	rc = FUNC1(go, 0x57, addr, val, buf, 16, 1);
	FUNC8(&usb->i2c_lock);
	if (rc < 0) {
		FUNC4(buf);
		return rc;
	}

	if (buf[0] == 0) {
		unsigned int subaddr, val_read;

		subaddr = (buf[4] << 8) + buf[5];
		val_read = (buf[2] << 8) + buf[3];
		FUNC4(buf);
		if (val_read != val) {
			FUNC0(&client->dev, "invalid fp write %x %x\n",
				 val_read, val);
			return -EFAULT;
		}
		if (subaddr != addr) {
			FUNC0(&client->dev, "invalid fp write addr %x %x\n",
				 subaddr, addr);
			return -EFAULT;
		}
	} else {
		FUNC4(buf);
		return -EFAULT;
	}

	/* save last 12b value */
	if (addr == 0x12b)
		dec->reg12b_val = val;

	return 0;
}