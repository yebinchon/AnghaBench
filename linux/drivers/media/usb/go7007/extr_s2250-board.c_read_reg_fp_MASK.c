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
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct go7007_usb {int /*<<< orphan*/  i2c_lock; } ;
struct go7007 {scalar_t__ status; struct go7007_usb* hpi_context; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STATUS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct go7007*,int,int,int /*<<< orphan*/ ,int*,int,int) ; 
 struct go7007* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, u16 addr, u16 *val)
{
	struct go7007 *go = FUNC2(client->adapter);
	struct go7007_usb *usb;
	int rc;
	u8 *buf;

	if (go == NULL)
		return -ENODEV;

	if (go->status == STATUS_SHUTDOWN)
		return -EBUSY;

	buf = FUNC4(16, GFP_KERNEL);

	if (buf == NULL)
		return -ENOMEM;



	FUNC5(buf, 0xcd, 6);
	usb = go->hpi_context;
	if (FUNC6(&usb->i2c_lock) != 0) {
		FUNC0(&client->dev, "i2c lock failed\n");
		FUNC3(buf);
		return -EINTR;
	}
	rc = FUNC1(go, 0x58, addr, 0, buf, 16, 1);
	FUNC7(&usb->i2c_lock);
	if (rc < 0) {
		FUNC3(buf);
		return rc;
	}

	*val = (buf[0] << 8) | buf[1];
	FUNC3(buf);

	return 0;
}