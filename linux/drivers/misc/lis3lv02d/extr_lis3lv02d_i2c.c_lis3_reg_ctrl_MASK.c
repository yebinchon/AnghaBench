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
struct lis3lv02d {int /*<<< orphan*/  regulators; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIS3_REG_OFF ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct lis3lv02d *lis3, bool state)
{
	int ret;
	if (state == LIS3_REG_OFF) {
		ret = FUNC1(FUNC0(lis3->regulators),
					lis3->regulators);
	} else {
		ret = FUNC2(FUNC0(lis3->regulators),
					lis3->regulators);
		/* Chip needs time to wakeup. Not mentioned in datasheet */
		FUNC3(10000, 20000);
	}
	return ret;
}