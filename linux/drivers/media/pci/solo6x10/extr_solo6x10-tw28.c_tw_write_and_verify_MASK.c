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
typedef  scalar_t__ u8 ;
struct solo_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOLO_I2C_TW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct solo_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct solo_dev *solo_dev, u8 addr, u8 off,
				u8 val)
{
	int i;

	for (i = 0; i < 5; i++) {
		u8 rval = FUNC1(solo_dev, SOLO_I2C_TW, addr, off);

		if (rval == val)
			return;

		FUNC2(solo_dev, SOLO_I2C_TW, addr, off, val);
		FUNC0(1);
	}

/*	printk("solo6x10/tw28: Error writing register: %02x->%02x [%02x]\n", */
/*		addr, off, val); */
}