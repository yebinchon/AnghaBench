#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct t7l66xb {int /*<<< orphan*/  clk32k; int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ SCR_DEV_CTL ; 
 int /*<<< orphan*/  SCR_DEV_CTL_MMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct t7l66xb* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *mmc)
{
	struct t7l66xb *t7l66xb = FUNC1(mmc->dev.parent);
	unsigned long flags;
	u8 dev_ctl;

	FUNC2(&t7l66xb->lock, flags);

	dev_ctl = FUNC4(t7l66xb->scr + SCR_DEV_CTL);
	dev_ctl &= ~SCR_DEV_CTL_MMC;
	FUNC5(dev_ctl, t7l66xb->scr + SCR_DEV_CTL);

	FUNC3(&t7l66xb->lock, flags);

	FUNC0(t7l66xb->clk32k);

	return 0;
}