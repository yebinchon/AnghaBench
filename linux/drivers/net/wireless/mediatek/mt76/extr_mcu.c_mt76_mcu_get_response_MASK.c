#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  res_q; int /*<<< orphan*/  wait; } ;
struct TYPE_4__ {TYPE_1__ mcu; } ;
struct mt76_dev {TYPE_2__ mmio; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,unsigned long) ; 

struct sk_buff *FUNC4(struct mt76_dev *dev,
				      unsigned long expires)
{
	unsigned long timeout;

	if (!FUNC2(expires))
		return NULL;

	timeout = expires - jiffies;
	FUNC3(dev->mmio.mcu.wait,
			   !FUNC1(&dev->mmio.mcu.res_q),
			   timeout);
	return FUNC0(&dev->mmio.mcu.res_q);
}