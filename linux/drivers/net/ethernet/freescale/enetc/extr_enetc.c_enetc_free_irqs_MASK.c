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
struct enetc_ndev_priv {int bdr_int_num; int /*<<< orphan*/ * int_vector; TYPE_1__* si; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 scalar_t__ ENETC_BDR_INT_BASE_IDX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_dev*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct enetc_ndev_priv *priv)
{
	struct pci_dev *pdev = priv->si->pdev;
	int i;

	for (i = 0; i < priv->bdr_int_num; i++) {
		int irq = FUNC2(pdev, ENETC_BDR_INT_BASE_IDX + i);

		FUNC1(irq, NULL);
		FUNC0(irq, priv->int_vector[i]);
	}
}