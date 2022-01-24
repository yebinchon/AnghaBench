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
struct ioc3_private {int /*<<< orphan*/  ioc3_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct ioc3_private*) ; 
 struct ioc3_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC5(dev);

	FUNC0(&ip->ioc3_timer);

	FUNC6(dev);

	FUNC4(ip);
	FUNC1(dev->irq, dev);

	FUNC3(ip);
	FUNC2(ip);

	return 0;
}