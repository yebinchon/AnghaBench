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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct net_device {char* name; } ;
struct myri10ge_slice_state {char* irq_desc; } ;
struct myri10ge_priv {int msi_enabled; int msix_enabled; int num_slices; struct myri10ge_slice_state* ss; struct net_device* dev; TYPE_1__* msix_vectors; struct pci_dev* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct myri10ge_slice_state*) ; 
 int /*<<< orphan*/  myri10ge_intr ; 
 scalar_t__ myri10ge_msi ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,TYPE_1__*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct myri10ge_slice_state*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC8(struct myri10ge_priv *mgp)
{
	struct pci_dev *pdev = mgp->pdev;
	struct myri10ge_slice_state *ss;
	struct net_device *netdev = mgp->dev;
	int i;
	int status;

	mgp->msi_enabled = 0;
	mgp->msix_enabled = 0;
	status = 0;
	if (myri10ge_msi) {
		if (mgp->num_slices > 1) {
			status = FUNC5(pdev, mgp->msix_vectors,
					mgp->num_slices, mgp->num_slices);
			if (status < 0) {
				FUNC0(&pdev->dev,
					"Error %d setting up MSI-X\n", status);
				return status;
			}
			mgp->msix_enabled = 1;
		}
		if (mgp->msix_enabled == 0) {
			status = FUNC4(pdev);
			if (status != 0) {
				FUNC0(&pdev->dev,
					"Error %d setting up MSI; falling back to xPIC\n",
					status);
			} else {
				mgp->msi_enabled = 1;
			}
		}
	}
	if (mgp->msix_enabled) {
		for (i = 0; i < mgp->num_slices; i++) {
			ss = &mgp->ss[i];
			FUNC7(ss->irq_desc, sizeof(ss->irq_desc),
				 "%s:slice-%d", netdev->name, i);
			status = FUNC6(mgp->msix_vectors[i].vector,
					     myri10ge_intr, 0, ss->irq_desc,
					     ss);
			if (status != 0) {
				FUNC0(&pdev->dev,
					"slice %d failed to allocate IRQ\n", i);
				i--;
				while (i >= 0) {
					FUNC1(mgp->msix_vectors[i].vector,
						 &mgp->ss[i]);
					i--;
				}
				FUNC3(pdev);
				return status;
			}
		}
	} else {
		status = FUNC6(pdev->irq, myri10ge_intr, IRQF_SHARED,
				     mgp->dev->name, &mgp->ss[0]);
		if (status != 0) {
			FUNC0(&pdev->dev, "failed to allocate IRQ\n");
			if (mgp->msi_enabled)
				FUNC2(pdev);
		}
	}
	return status;
}