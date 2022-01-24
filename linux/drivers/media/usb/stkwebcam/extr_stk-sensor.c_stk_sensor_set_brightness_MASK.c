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
struct stk_camera {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_AEB ; 
 int /*<<< orphan*/  REG_AEW ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct stk_camera *dev, int br)
{
	if (br < 0 || br > 0xff)
		return -EINVAL;
	FUNC2(dev, REG_AEB, FUNC0(0x00, br - 6));
	FUNC2(dev, REG_AEW, FUNC1(0xff, br + 6));
	return 0;
}