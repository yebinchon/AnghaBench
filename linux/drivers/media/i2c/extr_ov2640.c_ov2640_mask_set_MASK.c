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
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			   u8  reg, u8  mask, u8  set)
{
	s32 val = FUNC1(client, reg);
	if (val < 0)
		return val;

	val &= ~mask;
	val |= set & mask;

	FUNC0(&client->dev, "masks: 0x%02x, 0x%02x", reg, val);

	return FUNC2(client, reg, val);
}