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
struct xgbe_prv_data {int /*<<< orphan*/  pcidev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xgbe_prv_data* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct xgbe_prv_data *pdata = FUNC1(pdev);

	FUNC2(pdata);

	FUNC0(pdata->pcidev);

	FUNC3(pdata);
}