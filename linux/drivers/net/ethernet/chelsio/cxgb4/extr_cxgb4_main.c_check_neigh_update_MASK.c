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
struct TYPE_3__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct neighbour {struct net_device* dev; } ;
struct device {int /*<<< orphan*/ * driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 TYPE_2__ cxgb4_driver ; 
 int /*<<< orphan*/  FUNC0 (struct device const*) ; 
 scalar_t__ FUNC1 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct neighbour*) ; 
 struct net_device* FUNC3 (struct net_device const*) ; 

__attribute__((used)) static void FUNC4(struct neighbour *neigh)
{
	const struct device *parent;
	const struct net_device *netdev = neigh->dev;

	if (FUNC1(netdev))
		netdev = FUNC3(netdev);
	parent = netdev->dev.parent;
	if (parent && parent->driver == &cxgb4_driver.driver)
		FUNC2(FUNC0(parent), neigh);
}