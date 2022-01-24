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
struct alx_priv {struct net_device* dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct alx_priv* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static pci_ers_result_t FUNC8(struct pci_dev *pdev,
					       pci_channel_state_t state)
{
	struct alx_priv *alx = FUNC5(pdev);
	struct net_device *netdev = alx->dev;
	pci_ers_result_t rc = PCI_ERS_RESULT_NEED_RESET;

	FUNC1(&pdev->dev, "pci error detected\n");

	FUNC6();

	if (FUNC3(netdev)) {
		FUNC2(netdev);
		FUNC0(alx);
	}

	if (state == pci_channel_io_perm_failure)
		rc = PCI_ERS_RESULT_DISCONNECT;
	else
		FUNC4(pdev);

	FUNC7();

	return rc;
}