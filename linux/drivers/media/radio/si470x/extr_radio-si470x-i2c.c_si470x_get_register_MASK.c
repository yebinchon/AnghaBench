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
typedef  int /*<<< orphan*/  u16 ;
struct si470x_device {int /*<<< orphan*/ * registers; TYPE_1__* client; } ;
struct i2c_msg {int len; void* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 size_t FUNC0 (int) ; 
 int READ_REG_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct si470x_device *radio, int regnr)
{
	__be16 buf[READ_REG_NUM];
	struct i2c_msg msgs[1] = {
		{
			.addr = radio->client->addr,
			.flags = I2C_M_RD,
			.len = sizeof(u16) * READ_REG_NUM,
			.buf = (void *)buf
		},
	};

	if (FUNC2(radio->client->adapter, msgs, 1) != 1)
		return -EIO;

	radio->registers[regnr] = FUNC1(buf[FUNC0(regnr)]);

	return 0;
}