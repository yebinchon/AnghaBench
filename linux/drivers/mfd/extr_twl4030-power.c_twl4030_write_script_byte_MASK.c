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

/* Variables and functions */
 int /*<<< orphan*/  R_MEMORY_ADDRESS ; 
 int /*<<< orphan*/  R_MEMORY_DATA ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(u8 address, u8 byte)
{
	int err;

	err = FUNC0(TWL_MODULE_PM_MASTER, address, R_MEMORY_ADDRESS);
	if (err)
		goto out;
	err = FUNC0(TWL_MODULE_PM_MASTER, byte, R_MEMORY_DATA);
out:
	return err;
}