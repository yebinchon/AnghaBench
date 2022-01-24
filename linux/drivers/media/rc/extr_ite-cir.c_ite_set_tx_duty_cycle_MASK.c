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
typedef  int /*<<< orphan*/  u32 ;
struct rc_dev {struct ite_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_duty_cycle; } ;
struct ite_dev {int /*<<< orphan*/  lock; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ite_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct rc_dev *rcdev, u32 duty_cycle)
{
	unsigned long flags;
	struct ite_dev *dev = rcdev->priv;

	FUNC1(&dev->lock, flags);
	dev->params.tx_duty_cycle = duty_cycle;
	FUNC0(dev);
	FUNC2(&dev->lock, flags);

	return 0;
}