#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct nicvf {int /*<<< orphan*/  ptp_clock; scalar_t__ drv_stats; int /*<<< orphan*/ * nicvf_rx_mode_wq; TYPE_1__* pnicvf; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct nicvf* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct nicvf *nic;
	struct net_device *pnetdev;

	if (!netdev)
		return;

	nic = FUNC4(netdev);
	pnetdev = nic->pnicvf->netdev;

	/* Check if this Qset is assigned to different VF.
	 * If yes, clean primary and all secondary Qsets.
	 */
	if (pnetdev && (pnetdev->reg_state == NETREG_REGISTERED))
		FUNC10(pnetdev);
	if (nic->nicvf_rx_mode_wq) {
		FUNC1(nic->nicvf_rx_mode_wq);
		nic->nicvf_rx_mode_wq = NULL;
	}
	FUNC5(nic);
	FUNC9(pdev, NULL);
	if (nic->drv_stats)
		FUNC3(nic->drv_stats);
	FUNC0(nic->ptp_clock);
	FUNC2(netdev);
	FUNC8(pdev);
	FUNC6(pdev);
}