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
typedef  scalar_t__ u32 ;
struct qlcnic_fw_dump {int cap_mask; struct qlcnic_83xx_dump_template_hdr* tmpl_hdr; } ;
struct qlcnic_hardware_context {struct qlcnic_fw_dump fw_dump; } ;
struct qlcnic_adapter {scalar_t__ fw_version; struct pci_dev* pdev; struct qlcnic_hardware_context* ahw; } ;
struct qlcnic_83xx_dump_template_hdr {int drv_cap_mask; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_83xx_dump_template_hdr*) ; 

void FUNC6(struct qlcnic_adapter *adapter)
{
	u32 prev_version, current_version;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlcnic_fw_dump *fw_dump = &ahw->fw_dump;
	struct pci_dev *pdev = adapter->pdev;
	bool extended = false;
	int ret;

	prev_version = adapter->fw_version;
	current_version = FUNC2(adapter);

	if (fw_dump->tmpl_hdr == NULL || current_version > prev_version) {
		FUNC5(fw_dump->tmpl_hdr);

		if (FUNC3(adapter))
			extended = !FUNC1(adapter);

		ret = FUNC4(adapter);
		if (ret)
			return;

		FUNC0(&pdev->dev, "Supports FW dump capability\n");

		/* Once we have minidump template with extended iSCSI dump
		 * capability, update the minidump capture mask to 0x1f as
		 * per FW requirement
		 */
		if (extended) {
			struct qlcnic_83xx_dump_template_hdr *hdr;

			hdr = fw_dump->tmpl_hdr;
			hdr->drv_cap_mask = 0x1f;
			fw_dump->cap_mask = 0x1f;
			FUNC0(&pdev->dev,
				 "Extended iSCSI dump capability and updated capture mask to 0x1f\n");
		}
	}
}