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
struct da9150 {int /*<<< orphan*/  dev; int /*<<< orphan*/  core_qif; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct da9150 *da9150, u8 addr, int count, u8 *buf)
{
	int ret;

	ret = FUNC0(da9150->core_qif, addr, count, buf);
	if (ret < 0)
		FUNC1(da9150->dev, "Failed to read from QIF 0x%x: %d\n",
			addr, ret);
}