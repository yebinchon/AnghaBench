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
struct lis3lv02d {struct i2c_client* bus_priv; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline s32 FUNC1(struct lis3lv02d *lis3, int reg, int len,
				u8 *v)
{
	struct i2c_client *c = lis3->bus_priv;
	reg |= (1 << 7); /* 7th bit enables address auto incrementation */
	return FUNC0(c, reg, len, v);
}