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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct asic_fixed_properties {scalar_t__ pcie_aux_dbi_reg_addr; } ;
struct hl_device {int /*<<< orphan*/  dev; struct asic_fixed_properties asic_prop; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct hl_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hl_device*,int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

int FUNC5(struct hl_device *hdev, u8 inbound_region, u8 bar,
				u64 addr)
{
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u32 offset;
	int rc;

	switch (inbound_region) {
	case 0:
		offset = 0x100;
		break;
	case 1:
		offset = 0x300;
		break;
	case 2:
		offset = 0x500;
		break;
	default:
		FUNC0(hdev->dev, "Invalid inbound region %d\n",
			inbound_region);
		return -EINVAL;
	}

	if (bar != 0 && bar != 2 && bar != 4) {
		FUNC0(hdev->dev, "Invalid PCI BAR %d\n", bar);
		return -EINVAL;
	}

	/* Point to the specified address */
	rc = FUNC2(hdev, offset + 0x14, FUNC3(addr));
	rc |= FUNC2(hdev, offset + 0x18, FUNC4(addr));
	rc |= FUNC2(hdev, offset + 0x0, 0);
	/* Enable + BAR match + match enable + BAR number */
	rc |= FUNC2(hdev, offset + 0x4, 0xC0080000 | (bar << 8));

	/* Return the DBI window to the default location */
	rc |= FUNC1(hdev, prop->pcie_aux_dbi_reg_addr, 0);
	rc |= FUNC1(hdev, prop->pcie_aux_dbi_reg_addr + 4, 0);

	if (rc)
		FUNC0(hdev->dev, "failed to map DRAM bar to 0x%08llx\n",
			addr);

	return rc;
}