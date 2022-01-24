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
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; struct firmware* fw; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {size_t fw_type; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ QLCNIC_BDINFO_MAGIC ; 
 int /*<<< orphan*/  QLCNIC_BIOS_VERSION_OFFSET ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  QLCNIC_FW_IMG_VALID ; 
 size_t QLCNIC_FW_MAGIC_OFFSET ; 
 scalar_t__ QLCNIC_FW_MIN_SIZE ; 
 scalar_t__ QLCNIC_MIN_FW_VERSION ; 
 size_t QLCNIC_UNIFIED_ROMIMAGE ; 
 scalar_t__ QLCNIC_UNI_FW_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * fw_name ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC11(struct qlcnic_adapter *adapter)
{
	u32 val;
	u32 ver, bios, min_size;
	struct pci_dev *pdev = adapter->pdev;
	const struct firmware *fw = adapter->fw;
	u8 fw_type = adapter->ahw->fw_type;

	if (fw_type == QLCNIC_UNIFIED_ROMIMAGE) {
		if (FUNC10(adapter))
			return -EINVAL;

		min_size = QLCNIC_UNI_FW_MIN_SIZE;
	} else {
		val = FUNC6(*(__le32 *)&fw->data[QLCNIC_FW_MAGIC_OFFSET]);
		if (val != QLCNIC_BDINFO_MAGIC)
			return -EINVAL;

		min_size = QLCNIC_FW_MIN_SIZE;
	}

	if (fw->size < min_size)
		return -EINVAL;

	val = FUNC8(adapter);
	ver = FUNC0(val);

	if (ver < QLCNIC_MIN_FW_VERSION) {
		FUNC5(&pdev->dev,
				"%s: firmware version %d.%d.%d unsupported\n",
		fw_name[fw_type], FUNC3(ver), FUNC4(ver), FUNC2(ver));
		return -EINVAL;
	}

	val = FUNC7(adapter);
	FUNC9(adapter, QLCNIC_BIOS_VERSION_OFFSET, (int *)&bios);
	if (val != bios) {
		FUNC5(&pdev->dev, "%s: firmware bios is incompatible\n",
				fw_name[fw_type]);
		return -EINVAL;
	}

	FUNC1(adapter, QLCNIC_FW_IMG_VALID, QLCNIC_BDINFO_MAGIC);
	return 0;
}