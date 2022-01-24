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
typedef  int u32 ;
struct pci_device_id {scalar_t__ device; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FW_READY ; 
 int MLXSW_PCI_FW_READY_MAGIC ; 
 int MLXSW_PCI_FW_READY_MASK ; 
 int /*<<< orphan*/  MLXSW_PCI_SW_RESET_TIMEOUT_MSECS ; 
 int /*<<< orphan*/  MLXSW_PCI_SW_RESET_WAIT_MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MRSR_LEN ; 
 scalar_t__ PCI_DEVICE_ID_MELLANOX_SWITCHX2 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 int FUNC2 (struct mlxsw_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mrsr ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_pci *mlxsw_pci,
			      const struct pci_device_id *id)
{
	unsigned long end;
	char mrsr_pl[MLXSW_REG_MRSR_LEN];
	int err;

	FUNC3(mrsr_pl);
	err = FUNC4(mlxsw_pci->core, FUNC0(mrsr), mrsr_pl);
	if (err)
		return err;
	if (id->device == PCI_DEVICE_ID_MELLANOX_SWITCHX2) {
		FUNC6(MLXSW_PCI_SW_RESET_TIMEOUT_MSECS);
		return 0;
	}

	/* We must wait for the HW to become responsive once again. */
	FUNC6(MLXSW_PCI_SW_RESET_WAIT_MSECS);

	end = jiffies + FUNC5(MLXSW_PCI_SW_RESET_TIMEOUT_MSECS);
	do {
		u32 val = FUNC2(mlxsw_pci, FW_READY);

		if ((val & MLXSW_PCI_FW_READY_MASK) == MLXSW_PCI_FW_READY_MAGIC)
			return 0;
		FUNC1();
	} while (FUNC7(jiffies, end));
	return -EBUSY;
}