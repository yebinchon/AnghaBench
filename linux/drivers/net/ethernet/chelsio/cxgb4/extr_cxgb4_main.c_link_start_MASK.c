#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct port_info {TYPE_1__* adapter; int /*<<< orphan*/  link_cfg; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  smt_idx; int /*<<< orphan*/  xact_addr_filt; int /*<<< orphan*/  viid; } ;
struct net_device {int features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct TYPE_4__ {unsigned int pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_DCB_ENABLED ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int FUNC0 (struct port_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct port_info* FUNC3 (struct net_device*) ; 
 int FUNC4 (TYPE_1__*,unsigned int,struct port_info*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	int ret;
	struct port_info *pi = FUNC3(dev);
	unsigned int mb = pi->adapter->pf;

	/*
	 * We do not set address filters and promiscuity here, the stack does
	 * that step explicitly.
	 */
	ret = FUNC6(pi->adapter, mb, pi->viid, dev->mtu, -1, -1, -1,
			    !!(dev->features & NETIF_F_HW_VLAN_CTAG_RX), true);
	if (ret == 0)
		ret = FUNC0(pi, pi->viid, &pi->xact_addr_filt,
					    dev->dev_addr, true, &pi->smt_idx);
	if (ret == 0)
		ret = FUNC5(pi->adapter, mb, pi->tx_chan,
				    &pi->link_cfg);
	if (ret == 0) {
		FUNC1();
		ret = FUNC4(pi->adapter, mb, pi, true,
					  true, CXGB4_DCB_ENABLED);
		FUNC2();
	}

	return ret;
}