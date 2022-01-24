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
struct nfp_port {int dummy; } ;
struct nfp_pf {int dummy; } ;
struct nfp_eth_table_port {int /*<<< orphan*/  mac_addr; } ;
struct net_device {int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 struct nfp_eth_table_port* FUNC0 (struct nfp_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct nfp_pf *pf, struct net_device *netdev,
		     struct nfp_port *port)
{
	struct nfp_eth_table_port *eth_port;

	eth_port = FUNC0(port);
	if (!eth_port) {
		FUNC1(netdev);
		return;
	}

	FUNC2(netdev->dev_addr, eth_port->mac_addr);
	FUNC2(netdev->perm_addr, eth_port->mac_addr);
}