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
struct netcp_intf {int /*<<< orphan*/  tx_pool_size; int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/  tx_pool; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netcp_intf*,int /*<<< orphan*/ ) ; 
 struct netcp_intf* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct netcp_intf *netcp = FUNC3(ndev);
	unsigned int descs = FUNC1(netcp->tx_pool);

	FUNC0(netcp->ndev_dev, "transmit timed out tx descs(%d)\n", descs);
	FUNC2(netcp, netcp->tx_pool_size);
	FUNC4(ndev);
	FUNC5(ndev);
}