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
struct TYPE_2__ {int /*<<< orphan*/  in_mbox; int /*<<< orphan*/  out_mbox; } ;
struct mlxsw_pci {TYPE_1__ cmd; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_pci*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *bus_priv)
{
	struct mlxsw_pci *mlxsw_pci = bus_priv;

	FUNC0(FUNC5(mlxsw_pci->pdev, 0), mlxsw_pci);
	FUNC1(mlxsw_pci);
	FUNC3(mlxsw_pci);
	FUNC2(mlxsw_pci);
	FUNC4(mlxsw_pci, &mlxsw_pci->cmd.out_mbox);
	FUNC4(mlxsw_pci, &mlxsw_pci->cmd.in_mbox);
}