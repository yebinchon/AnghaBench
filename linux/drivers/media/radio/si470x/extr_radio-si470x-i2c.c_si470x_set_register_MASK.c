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
struct si470x_device {TYPE_1__* client; int /*<<< orphan*/ * registers; } ;
struct i2c_msg {int len; void* buf; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 size_t FUNC0 (int) ; 
 int WRITE_REG_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct si470x_device *radio, int regnr)
{
	int i;
	__be16 buf[WRITE_REG_NUM];
	struct i2c_msg msgs[1] = {
		{
			.addr = radio->client->addr,
			.len = sizeof(u16) * WRITE_REG_NUM,
			.buf = (void *)buf
		},
	};

	for (i = 0; i < WRITE_REG_NUM; i++)
		buf[i] = FUNC1(radio->registers[FUNC0(i)]);

	if (FUNC2(radio->client->adapter, msgs, 1) != 1)
		return -EIO;

	return 0;
}