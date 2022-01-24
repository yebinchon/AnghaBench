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
struct tw5864_dev {int /*<<< orphan*/  slock; scalar_t__ irqmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tw5864_dev*) ; 

__attribute__((used)) static void FUNC3(struct tw5864_dev *dev)
{
	unsigned long flags;

	FUNC0(&dev->slock, flags);
	dev->irqmask = 0;
	FUNC2(dev);
	FUNC1(&dev->slock, flags);
}