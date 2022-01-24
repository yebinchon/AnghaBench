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
struct netdevsim {struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdevsim*) ; 
 int /*<<< orphan*/  FUNC2 (struct netdevsim*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

void FUNC6(struct netdevsim *ns)
{
	struct net_device *dev = ns->netdev;

	FUNC3();
	FUNC5(dev);
	FUNC2(ns);
	FUNC1(ns);
	FUNC4();
	FUNC0(dev);
}