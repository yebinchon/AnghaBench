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
typedef  int u64 ;
typedef  size_t u32 ;
struct qlcnic_flt_entry {int size; size_t start_addr; } ;
struct qlcnic_adapter {TYPE_1__* ahw; struct pci_dev* pdev; struct firmware* fw; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {size_t fw_type; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_BOOTLD_REGION ; 
 int QLCNIC_BOOTLD_START ; 
 scalar_t__ QLCNIC_CRB_PEG_NET_0 ; 
 int QLCNIC_IMAGE_START ; 
 scalar_t__ QLCNIC_ROMUSB_GLB_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * fw_name ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,struct qlcnic_flt_entry*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC7 (struct qlcnic_adapter*,size_t,int) ; 
 scalar_t__ FUNC8 (struct qlcnic_adapter*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

int
FUNC10(struct qlcnic_adapter *adapter)
{
	__le64 *ptr64;
	u32 i, flashaddr, size;
	const struct firmware *fw = adapter->fw;
	struct pci_dev *pdev = adapter->pdev;

	FUNC1(&pdev->dev, "loading firmware from %s\n",
		 fw_name[adapter->ahw->fw_type]);

	if (fw) {
		u64 data;

		size = (QLCNIC_IMAGE_START - QLCNIC_BOOTLD_START) / 8;

		ptr64 = (__le64 *)FUNC3(adapter);
		flashaddr = QLCNIC_BOOTLD_START;

		for (i = 0; i < size; i++) {
			data = FUNC2(ptr64[i]);

			if (FUNC7(adapter, flashaddr, data))
				return -EIO;

			flashaddr += 8;
		}

		size = FUNC6(adapter) / 8;

		ptr64 = (__le64 *)FUNC5(adapter);
		flashaddr = QLCNIC_IMAGE_START;

		for (i = 0; i < size; i++) {
			data = FUNC2(ptr64[i]);

			if (FUNC7(adapter,
						flashaddr, data))
				return -EIO;

			flashaddr += 8;
		}

		size = FUNC6(adapter) % 8;
		if (size) {
			data = FUNC2(ptr64[i]);

			if (FUNC7(adapter,
						flashaddr, data))
				return -EIO;
		}

	} else {
		u64 data;
		u32 hi, lo;
		int ret;
		struct qlcnic_flt_entry bootld_entry;

		ret = FUNC4(adapter, QLCNIC_BOOTLD_REGION,
					&bootld_entry);
		if (!ret) {
			size = bootld_entry.size / 8;
			flashaddr = bootld_entry.start_addr;
		} else {
			size = (QLCNIC_IMAGE_START - QLCNIC_BOOTLD_START) / 8;
			flashaddr = QLCNIC_BOOTLD_START;
			FUNC1(&pdev->dev,
				"using legacy method to get flash fw region");
		}

		for (i = 0; i < size; i++) {
			if (FUNC8(adapter,
					flashaddr, (int *)&lo) != 0)
				return -EIO;
			if (FUNC8(adapter,
					flashaddr + 4, (int *)&hi) != 0)
				return -EIO;

			data = (((u64)hi << 32) | lo);

			if (FUNC7(adapter,
						flashaddr, data))
				return -EIO;

			flashaddr += 8;
		}
	}
	FUNC9(1000, 1500);

	FUNC0(adapter, QLCNIC_CRB_PEG_NET_0 + 0x18, 0x1020);
	FUNC0(adapter, QLCNIC_ROMUSB_GLB_SW_RESET, 0x80001e);
	return 0;
}