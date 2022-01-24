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
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  ether1_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 

__attribute__((used)) static int
FUNC4 (struct net_device *dev)
{
	if (FUNC3(dev->irq, ether1_interrupt, 0, "ether1", dev))
		return -EAGAIN;

	if (FUNC0 (dev)) {
		FUNC1 (dev->irq, dev);
		return -EAGAIN;
	}

	FUNC2(dev);

	return 0;
}