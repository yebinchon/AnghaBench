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
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct i2c_client *client, int balance)
{
	int bal = balance >> 8;
	if (bal > 0x80) {
		/* PATH1_BAL_LEFT */
		FUNC0(client, 0x8d5, 0x7f, 0x80);
		/* PATH1_BAL_LEVEL */
		FUNC0(client, 0x8d5, ~0x7f, bal & 0x7f);
	} else {
		/* PATH1_BAL_LEFT */
		FUNC0(client, 0x8d5, 0x7f, 0x00);
		/* PATH1_BAL_LEVEL */
		FUNC0(client, 0x8d5, ~0x7f, 0x80 - bal);
	}
}