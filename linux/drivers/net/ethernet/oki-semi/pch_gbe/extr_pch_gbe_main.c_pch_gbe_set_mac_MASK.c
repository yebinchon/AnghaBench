#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__* reg; TYPE_1__ mac; } ;
struct pch_gbe_adapter {TYPE_4__ hw; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;
struct TYPE_7__ {TYPE_2__* mac_adr; } ;
struct TYPE_6__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,...) ; 
 struct pch_gbe_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, void *addr)
{
	struct pch_gbe_adapter *adapter = FUNC4(netdev);
	struct sockaddr *skaddr = addr;
	int ret_val;

	if (!FUNC1(skaddr->sa_data)) {
		ret_val = -EADDRNOTAVAIL;
	} else {
		FUNC2(netdev->dev_addr, skaddr->sa_data, netdev->addr_len);
		FUNC2(adapter->hw.mac.addr, skaddr->sa_data, netdev->addr_len);
		FUNC5(&adapter->hw, adapter->hw.mac.addr, 0);
		ret_val = 0;
	}
	FUNC3(netdev, "ret_val : 0x%08x\n", ret_val);
	FUNC3(netdev, "dev_addr : %pM\n", netdev->dev_addr);
	FUNC3(netdev, "mac_addr : %pM\n", adapter->hw.mac.addr);
	FUNC3(netdev, "MAC_ADR1AB reg : 0x%08x 0x%08x\n",
		   FUNC0(&adapter->hw.reg->mac_adr[0].high),
		   FUNC0(&adapter->hw.reg->mac_adr[0].low));
	return ret_val;
}