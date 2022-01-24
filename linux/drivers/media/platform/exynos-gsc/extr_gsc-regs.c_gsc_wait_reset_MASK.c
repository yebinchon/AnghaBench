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
typedef  int /*<<< orphan*/  u32 ;
struct gsc_dev {scalar_t__ regs; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ GSC_SW_RESET ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(struct gsc_dev *dev)
{
	unsigned long end = jiffies + FUNC0(50);
	u32 cfg;

	while (FUNC2(jiffies, end)) {
		cfg = FUNC1(dev->regs + GSC_SW_RESET);
		if (!cfg)
			return 0;
		FUNC3(10, 20);
	}

	return -EBUSY;
}