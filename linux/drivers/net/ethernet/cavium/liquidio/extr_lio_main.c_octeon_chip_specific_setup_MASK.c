#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  max_vfs; } ;
struct octeon_device {int rev_id; TYPE_2__* pci_dev; TYPE_1__ sriov_info; int /*<<< orphan*/  chip_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  card_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIQUIDIO_VERSION ; 
#define  OCTEON_CN23XX_PCIID_PF 130 
 int /*<<< orphan*/  OCTEON_CN23XX_PF_VID ; 
 int /*<<< orphan*/  OCTEON_CN66XX ; 
#define  OCTEON_CN66XX_PCIID 129 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
#define  OCTEON_CN68XX_PCIID 128 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct octeon_device*) ; 
 int FUNC5 (struct octeon_device*) ; 
 TYPE_4__* FUNC6 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct octeon_device*) ; 

__attribute__((used)) static int FUNC10(struct octeon_device *oct)
{
	u32 dev_id, rev_id;
	int ret = 1;
	char *s;

	FUNC7(oct->pci_dev, 0, &dev_id);
	FUNC7(oct->pci_dev, 8, &rev_id);
	oct->rev_id = rev_id & 0xff;

	switch (dev_id) {
	case OCTEON_CN68XX_PCIID:
		oct->chip_id = OCTEON_CN68XX;
		ret = FUNC5(oct);
		s = "CN68XX";
		break;

	case OCTEON_CN66XX_PCIID:
		oct->chip_id = OCTEON_CN66XX;
		ret = FUNC4(oct);
		s = "CN66XX";
		break;

	case OCTEON_CN23XX_PCIID_PF:
		oct->chip_id = OCTEON_CN23XX_PF_VID;
		ret = FUNC9(oct);
		if (ret)
			break;
#ifdef CONFIG_PCI_IOV
		if (!ret)
			pci_sriov_set_totalvfs(oct->pci_dev,
					       oct->sriov_info.max_vfs);
#endif
		s = "CN23XX";
		break;

	default:
		s = "?";
		FUNC2(&oct->pci_dev->dev, "Unknown device found (dev_id: %x)\n",
			dev_id);
	}

	if (!ret)
		FUNC3(&oct->pci_dev->dev, "%s PASS%d.%d %s Version: %s\n", s,
			 FUNC0(oct),
			 FUNC1(oct),
			 FUNC6(oct)->card_name,
			 LIQUIDIO_VERSION);

	return ret;
}