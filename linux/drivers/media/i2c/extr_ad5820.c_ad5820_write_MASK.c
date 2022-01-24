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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct ad5820_device {int /*<<< orphan*/  subdev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ad5820_device *coil, u16 data)
{
	struct i2c_client *client = FUNC3(&coil->subdev);
	struct i2c_msg msg;
	__be16 be_data;
	int r;

	if (!client->adapter)
		return -ENODEV;

	be_data = FUNC0(data);
	msg.addr  = client->addr;
	msg.flags = 0;
	msg.len   = 2;
	msg.buf   = (u8 *)&be_data;

	r = FUNC2(client->adapter, &msg, 1);
	if (r < 0) {
		FUNC1(&client->dev, "write failed, error %d\n", r);
		return r;
	}

	return 0;
}