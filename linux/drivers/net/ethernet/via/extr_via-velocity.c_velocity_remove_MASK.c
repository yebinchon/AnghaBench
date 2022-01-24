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
struct velocity_info {int /*<<< orphan*/  mac_regs; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct velocity_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  velocity_nics ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct net_device *netdev = FUNC0(dev);
	struct velocity_info *vptr = FUNC3(netdev);

	FUNC5(netdev);
	FUNC4(&vptr->napi);
	FUNC2(vptr->mac_regs);
	FUNC1(netdev);
	velocity_nics--;

	return 0;
}