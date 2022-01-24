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
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int) ; 

void FUNC1(struct i2c_client *client, int cdo1, int cdo2)
{
	FUNC0(client, 0x0093, cdo1 & 0xfff);
	FUNC0(client, 0x009b, cdo1 >> 12);
	FUNC0(client, 0x00a3, cdo2 & 0xfff);
	FUNC0(client, 0x00ab, cdo2 >> 12);
	FUNC0(client, 0x0056, 0); /* LOAD_REG_1/2 */
}