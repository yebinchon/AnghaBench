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
struct net_vrf {int dummy; } ;
struct net_device {int /*<<< orphan*/ * dstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct net_vrf* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct net_vrf*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_vrf*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct net_vrf *vrf = FUNC1(dev);

	FUNC3(dev, vrf);
	FUNC2(dev, vrf);

	FUNC0(dev->dstats);
	dev->dstats = NULL;
}