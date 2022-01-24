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
struct pci_dev {scalar_t__ msix_enabled; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct alx_priv {int num_napi; struct alx_priv** qnapi; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct alx_priv *alx)
{
	struct pci_dev *pdev = alx->hw.pdev;
	int i;

	FUNC0(FUNC2(pdev, 0), alx);
	if (alx->hw.pdev->msix_enabled) {
		for (i = 0; i < alx->num_napi; i++)
			FUNC0(FUNC2(pdev, i + 1), alx->qnapi[i]);
	}

	FUNC1(pdev);
}