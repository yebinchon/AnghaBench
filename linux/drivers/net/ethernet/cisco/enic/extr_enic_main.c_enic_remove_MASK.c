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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct enic {int /*<<< orphan*/  vdev; int /*<<< orphan*/  pp; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  change_mtu_work; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENIC_SRIOV_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 scalar_t__ FUNC3 (struct enic*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct enic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC9(pdev);

	if (netdev) {
		struct enic *enic = FUNC6(netdev);

		FUNC0(&enic->reset);
		FUNC0(&enic->change_mtu_work);
		FUNC11(netdev);
		FUNC1(enic);
		FUNC12(enic->vdev);
#ifdef CONFIG_PCI_IOV
		if (enic_sriov_enabled(enic)) {
			pci_disable_sriov(pdev);
			enic->priv_flags &= ~ENIC_SRIOV_ENABLED;
		}
#endif
		FUNC5(enic->pp);
		FUNC13(enic->vdev);
		FUNC2(enic);
		FUNC10(pdev);
		FUNC7(pdev);
		FUNC4(netdev);
	}
}