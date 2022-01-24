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

__attribute__((used)) static void FUNC1(struct i2c_client *client)
{
	/* DL_ADDR_LB=0 DL_ADDR_HB=0 */
	FUNC0(client, 0x800, 0x00);
	FUNC0(client, 0x801, 0x00);
	// DL_MAP=3 DL_AUTO_INC=0 DL_ENABLE=1
	FUNC0(client, 0x803, 0x0b);
	/* AUTO_INC_DIS=1 */
	FUNC0(client, 0x000, 0x20);
}