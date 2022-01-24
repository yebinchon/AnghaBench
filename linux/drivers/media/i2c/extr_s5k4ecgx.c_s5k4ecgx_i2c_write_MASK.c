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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, u16 addr, u16 val)
{
	u8 buf[4] = { addr >> 8, addr & 0xff, val >> 8, val & 0xff };

	int ret = FUNC0(client, buf, 4);
	FUNC1(4, debug, client, "i2c_write: 0x%04x : 0x%04x\n", addr, val);

	return ret == 4 ? 0 : ret;
}