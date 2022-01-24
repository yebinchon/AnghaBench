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
struct net_device {int flags; int /*<<< orphan*/  if_port; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct ei_device {scalar_t__ interface_num; } ;

/* Variables and functions */
 int EAGAIN ; 
 int IFF_AUTOMEDIA ; 
 int /*<<< orphan*/  IF_PORT_10BASE2 ; 
 int /*<<< orphan*/  IF_PORT_10BASET ; 
 int /*<<< orphan*/  __ei_interrupt ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ei_device* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev)
{
	struct ei_device *ei_local = FUNC5(dev);

	if (FUNC6(dev->irq, __ei_interrupt, 0, dev->name, dev))
		return -EAGAIN;

	/*
	 * Make sure that we aren't going to change the
	 * media type on the next reset - we are about to
	 * do automedia manually now.
	 */
	ei_local->interface_num = 0;

	/*
	 * If we are doing automedia detection, do it now.
	 * This is more reliable than the 8390's detection.
	 */
	if (dev->flags & IFF_AUTOMEDIA) {
		dev->if_port = IF_PORT_10BASET;
		FUNC3(dev);
		FUNC4(1);
		if (!FUNC1(dev)) {
			dev->if_port = IF_PORT_10BASE2;
			FUNC3(dev);
		}
	} else
		FUNC3(dev);

	FUNC2(dev);
	FUNC0(dev);

	return 0;
}