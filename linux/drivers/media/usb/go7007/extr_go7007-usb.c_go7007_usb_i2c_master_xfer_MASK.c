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
struct i2c_msg {int addr; int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct go7007_usb {int /*<<< orphan*/  i2c_lock; } ;
struct go7007 {int* usb_buf; scalar_t__ status; struct go7007_usb* hpi_context; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int I2C_M_RD ; 
 scalar_t__ STATUS_SHUTDOWN ; 
 scalar_t__ FUNC0 (struct go7007*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 struct go7007* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,...) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adapter,
					struct i2c_msg msgs[], int num)
{
	struct go7007 *go = FUNC1(adapter);
	struct go7007_usb *usb = go->hpi_context;
	u8 *buf = go->usb_buf;
	int buf_len, i;
	int ret = -EIO;

	if (go->status == STATUS_SHUTDOWN)
		return -ENODEV;

	FUNC4(&usb->i2c_lock);

	for (i = 0; i < num; ++i) {
		/* The hardware command is "write some bytes then read some
		 * bytes", so we try to coalesce a write followed by a read
		 * into a single USB transaction */
		if (i + 1 < num && msgs[i].addr == msgs[i + 1].addr &&
				!(msgs[i].flags & I2C_M_RD) &&
				(msgs[i + 1].flags & I2C_M_RD)) {
#ifdef GO7007_I2C_DEBUG
			pr_debug("i2c write/read %d/%d bytes on %02x\n",
				msgs[i].len, msgs[i + 1].len, msgs[i].addr);
#endif
			buf[0] = 0x01;
			buf[1] = msgs[i].len + 1;
			buf[2] = msgs[i].addr << 1;
			FUNC2(&buf[3], msgs[i].buf, msgs[i].len);
			buf_len = msgs[i].len + 3;
			buf[buf_len++] = msgs[++i].len;
		} else if (msgs[i].flags & I2C_M_RD) {
#ifdef GO7007_I2C_DEBUG
			pr_debug("i2c read %d bytes on %02x\n",
					msgs[i].len, msgs[i].addr);
#endif
			buf[0] = 0x01;
			buf[1] = 1;
			buf[2] = msgs[i].addr << 1;
			buf[3] = msgs[i].len;
			buf_len = 4;
		} else {
#ifdef GO7007_I2C_DEBUG
			pr_debug("i2c write %d bytes on %02x\n",
					msgs[i].len, msgs[i].addr);
#endif
			buf[0] = 0x00;
			buf[1] = msgs[i].len + 1;
			buf[2] = msgs[i].addr << 1;
			FUNC2(&buf[3], msgs[i].buf, msgs[i].len);
			buf_len = msgs[i].len + 3;
			buf[buf_len++] = 0;
		}
		if (FUNC0(go, 0x24, 0, 0,
						buf, buf_len, 0) < 0)
			goto i2c_done;
		if (msgs[i].flags & I2C_M_RD) {
			FUNC3(buf, 0, msgs[i].len + 1);
			if (FUNC0(go, 0x25, 0, 0, buf,
						msgs[i].len + 1, 1) < 0)
				goto i2c_done;
			FUNC2(msgs[i].buf, buf + 1, msgs[i].len);
		}
	}
	ret = num;

i2c_done:
	FUNC5(&usb->i2c_lock);
	return ret;
}