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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct hinic_rx_mode_work {int /*<<< orphan*/  work; } ;
struct hinic_dev {int /*<<< orphan*/  hwdev; int /*<<< orphan*/  workq; struct hinic_rx_mode_work rx_mode_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_MGMT_MSG_CMD_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hinic_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct net_device* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC8(pdev);
	struct hinic_dev *nic_dev = FUNC6(netdev);
	struct hinic_rx_mode_work *rx_mode_work;

	FUNC11(netdev);

	FUNC5(nic_dev->hwdev,
				  HINIC_MGMT_MSG_CMD_LINK_STATUS);

	rx_mode_work = &nic_dev->rx_mode_work;
	FUNC0(&rx_mode_work->work);

	FUNC10(pdev, NULL);

	FUNC1(nic_dev->workq);

	FUNC4(nic_dev->hwdev);

	FUNC3(netdev);

	FUNC9(pdev);
	FUNC7(pdev);

	FUNC2(&pdev->dev, "HiNIC driver - removed\n");
}