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
typedef  int u16 ;
struct mlxsw_pci_mem_item {int /*<<< orphan*/  mapaddr; int /*<<< orphan*/  buf; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int count; struct mlxsw_pci_mem_item* items; } ;
struct mlxsw_pci {TYPE_1__ fw_area; int /*<<< orphan*/  pdev; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLXSW_CMD_MAP_FA_VPM_ENTRIES_MAX ; 
 int /*<<< orphan*/  MLXSW_PCI_PAGE_SIZE ; 
 struct mlxsw_pci_mem_item* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_pci_mem_item*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_pci *mlxsw_pci, char *mbox,
				  u16 num_pages)
{
	struct mlxsw_pci_mem_item *mem_item;
	int nent = 0;
	int i;
	int err;

	mlxsw_pci->fw_area.items = FUNC0(num_pages, sizeof(*mem_item),
					   GFP_KERNEL);
	if (!mlxsw_pci->fw_area.items)
		return -ENOMEM;
	mlxsw_pci->fw_area.count = num_pages;

	FUNC5(mbox);
	for (i = 0; i < num_pages; i++) {
		mem_item = &mlxsw_pci->fw_area.items[i];

		mem_item->size = MLXSW_PCI_PAGE_SIZE;
		mem_item->buf = FUNC6(mlxsw_pci->pdev,
						     mem_item->size,
						     &mem_item->mapaddr);
		if (!mem_item->buf) {
			err = -ENOMEM;
			goto err_alloc;
		}
		FUNC4(mbox, nent, mem_item->mapaddr);
		FUNC3(mbox, nent, 0); /* 1 page */
		if (++nent == MLXSW_CMD_MAP_FA_VPM_ENTRIES_MAX) {
			err = FUNC2(mlxsw_pci->core, mbox, nent);
			if (err)
				goto err_cmd_map_fa;
			nent = 0;
			FUNC5(mbox);
		}
	}

	if (nent) {
		err = FUNC2(mlxsw_pci->core, mbox, nent);
		if (err)
			goto err_cmd_map_fa;
	}

	return 0;

err_cmd_map_fa:
err_alloc:
	for (i--; i >= 0; i--) {
		mem_item = &mlxsw_pci->fw_area.items[i];

		FUNC7(mlxsw_pci->pdev, mem_item->size,
				    mem_item->buf, mem_item->mapaddr);
	}
	FUNC1(mlxsw_pci->fw_area.items);
	return err;
}