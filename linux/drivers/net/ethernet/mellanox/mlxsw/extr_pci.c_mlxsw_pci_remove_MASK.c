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
struct mlxsw_pci {int /*<<< orphan*/  pdev; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlxsw_pci* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct mlxsw_pci *mlxsw_pci = FUNC4(pdev);

	FUNC2(mlxsw_pci->core, false);
	FUNC0(mlxsw_pci->hw_addr);
	FUNC5(mlxsw_pci->pdev);
	FUNC3(mlxsw_pci->pdev);
	FUNC1(mlxsw_pci);
}