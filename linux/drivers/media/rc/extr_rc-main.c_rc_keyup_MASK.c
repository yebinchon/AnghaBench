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
struct rc_dev {int /*<<< orphan*/  keylock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rc_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct rc_dev *dev)
{
	unsigned long flags;

	FUNC1(&dev->keylock, flags);
	FUNC0(dev, true);
	FUNC2(&dev->keylock, flags);
}