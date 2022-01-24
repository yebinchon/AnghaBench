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
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {int registry_jumbo_packet; int /*<<< orphan*/  addr; int /*<<< orphan*/  rcv_lock; int /*<<< orphan*/  tcb_ready_qlock; int /*<<< orphan*/  tcb_send_qlock; struct net_device* netdev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const*) ; 
 struct et131x_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct et131x_adapter *FUNC4(struct net_device *netdev,
						  struct pci_dev *pdev)
{
	static const u8 default_mac[] = { 0x00, 0x05, 0x3d, 0x00, 0x02, 0x00 };

	struct et131x_adapter *adapter;

	adapter = FUNC1(netdev);
	adapter->pdev = FUNC2(pdev);
	adapter->netdev = netdev;

	FUNC3(&adapter->tcb_send_qlock);
	FUNC3(&adapter->tcb_ready_qlock);
	FUNC3(&adapter->rcv_lock);

	adapter->registry_jumbo_packet = 1514;	/* 1514-9216 */

	FUNC0(adapter->addr, default_mac);

	return adapter;
}