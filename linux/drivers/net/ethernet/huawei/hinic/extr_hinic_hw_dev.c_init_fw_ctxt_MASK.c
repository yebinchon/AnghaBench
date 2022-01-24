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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_cmd_fw_ctxt {scalar_t__ status; int /*<<< orphan*/  rx_buf_sz; int /*<<< orphan*/  func_idx; } ;
typedef  int /*<<< orphan*/  fw_ctxt ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  HINIC_PORT_CMD_FWCTXT_INIT ; 
 int /*<<< orphan*/  HINIC_RX_BUF_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (struct hinic_hwdev*,int /*<<< orphan*/ ,struct hinic_cmd_fw_ctxt*,int,struct hinic_cmd_fw_ctxt*,int*) ; 

__attribute__((used)) static int FUNC5(struct hinic_hwdev *hwdev)
{
	struct hinic_hwif *hwif = hwdev->hwif;
	struct pci_dev *pdev = hwif->pdev;
	struct hinic_cmd_fw_ctxt fw_ctxt;
	u16 out_size;
	int err;

	if (!FUNC1(hwif) && !FUNC2(hwif)) {
		FUNC3(&pdev->dev, "Unsupported PCI Function type\n");
		return -EINVAL;
	}

	fw_ctxt.func_idx = FUNC0(hwif);
	fw_ctxt.rx_buf_sz = HINIC_RX_BUF_SZ;

	err = FUNC4(hwdev, HINIC_PORT_CMD_FWCTXT_INIT,
				 &fw_ctxt, sizeof(fw_ctxt),
				 &fw_ctxt, &out_size);
	if (err || (out_size != sizeof(fw_ctxt)) || fw_ctxt.status) {
		FUNC3(&pdev->dev, "Failed to init FW ctxt, ret = %d\n",
			fw_ctxt.status);
		return -EFAULT;
	}

	return 0;
}