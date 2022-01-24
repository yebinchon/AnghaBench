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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct gbe_slave {int dummy; } ;
struct gbe_intf {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gbe_slave*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_regs ; 
 int /*<<< orphan*/  sa_hi ; 
 int /*<<< orphan*/  sa_lo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gbe_slave *slave,
			      struct gbe_intf *gbe_intf)
{
	struct net_device *ndev = gbe_intf->ndev;

	FUNC3(FUNC1(ndev->dev_addr), FUNC0(slave, port_regs, sa_hi));
	FUNC3(FUNC2(ndev->dev_addr), FUNC0(slave, port_regs, sa_lo));
}