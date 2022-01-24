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
struct stmmac_pci_func_data {int func; int phy_addr; } ;
struct stmmac_pci_dmi_data {size_t nfuncs; struct stmmac_pci_func_data* func; } ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct dmi_system_id {struct stmmac_pci_dmi_data* driver_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct dmi_system_id* FUNC1 (struct dmi_system_id const*) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *pdev,
				    const struct dmi_system_id *dmi_list)
{
	const struct stmmac_pci_func_data *func_data;
	const struct stmmac_pci_dmi_data *dmi_data;
	const struct dmi_system_id *dmi_id;
	int func = FUNC0(pdev->devfn);
	size_t n;

	dmi_id = FUNC1(dmi_list);
	if (!dmi_id)
		return -ENODEV;

	dmi_data = dmi_id->driver_data;
	func_data = dmi_data->func;

	for (n = 0; n < dmi_data->nfuncs; n++, func_data++)
		if (func_data->func == func)
			return func_data->phy_addr;

	return -ENODEV;
}