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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client, int enable)
{
	int ret_val;

	ret_val = FUNC0(client, 0x00);
	if (ret_val < 0)
		return;

	if (enable)
		ret_val |= 0x80;
	else
		ret_val &= 0x7F;

	FUNC1(client, 0x00, ret_val);
}