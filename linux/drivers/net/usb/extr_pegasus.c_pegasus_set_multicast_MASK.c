#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; } ;
struct TYPE_6__ {int /*<<< orphan*/ * eth_regs; } ;
typedef  TYPE_1__ pegasus_t ;

/* Variables and functions */
 size_t EthCtrl0 ; 
 size_t EthCtrl2 ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  RX_MULTICAST ; 
 int /*<<< orphan*/  RX_PROMISCUOUS ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct net_device *net)
{
	pegasus_t *pegasus = FUNC1(net);

	if (net->flags & IFF_PROMISC) {
		pegasus->eth_regs[EthCtrl2] |= RX_PROMISCUOUS;
		FUNC3(pegasus, link, net, "Promiscuous mode enabled\n");
	} else if (!FUNC0(net) || (net->flags & IFF_ALLMULTI)) {
		pegasus->eth_regs[EthCtrl0] |= RX_MULTICAST;
		pegasus->eth_regs[EthCtrl2] &= ~RX_PROMISCUOUS;
		FUNC2(pegasus, link, net, "set allmulti\n");
	} else {
		pegasus->eth_regs[EthCtrl0] &= ~RX_MULTICAST;
		pegasus->eth_regs[EthCtrl2] &= ~RX_PROMISCUOUS;
	}
	FUNC4(pegasus);
}