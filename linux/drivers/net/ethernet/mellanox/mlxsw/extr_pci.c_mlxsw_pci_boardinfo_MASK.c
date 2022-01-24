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
struct mlxsw_bus_info {int /*<<< orphan*/  psid; int /*<<< orphan*/  vsd; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; struct mlxsw_bus_info bus_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_pci *mlxsw_pci, char *mbox)
{
	struct mlxsw_bus_info *bus_info = &mlxsw_pci->bus_info;
	int err;

	FUNC3(mbox);
	err = FUNC0(mlxsw_pci->core, mbox);
	if (err)
		return err;
	FUNC2(mbox, bus_info->vsd);
	FUNC1(mbox, bus_info->psid);
	return 0;
}