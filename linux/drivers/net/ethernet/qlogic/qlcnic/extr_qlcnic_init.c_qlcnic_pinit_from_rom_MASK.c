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
struct qlcnic_adapter {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct crb_addr_pair {int addr; int data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCIE_SETUP_FUNCTION ; 
 int /*<<< orphan*/  PCIE_SETUP_FUNCTION2 ; 
 int QLCNIC_ADDR_ERROR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  QLCNIC_CMDPEG_STATE ; 
 int QLCNIC_CRB_DDR_NET ; 
 int QLCNIC_CRB_EPG ; 
 int QLCNIC_CRB_I2C0 ; 
 int QLCNIC_CRB_I2Q ; 
 int QLCNIC_CRB_NIU ; 
 int QLCNIC_CRB_PEG_NET_0 ; 
 int QLCNIC_CRB_PEG_NET_1 ; 
 int QLCNIC_CRB_PEG_NET_2 ; 
 int QLCNIC_CRB_PEG_NET_3 ; 
 int QLCNIC_CRB_PEG_NET_4 ; 
 int QLCNIC_CRB_PEG_NET_D ; 
 int QLCNIC_CRB_PEG_NET_I ; 
 int QLCNIC_CRB_SMB ; 
 int QLCNIC_CRB_SRE ; 
 int QLCNIC_CRB_TIMER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ QLCNIC_PCI_CRBSPACE ; 
 int /*<<< orphan*/  QLCNIC_PEG_HALT_STATUS1 ; 
 int /*<<< orphan*/  QLCNIC_PEG_HALT_STATUS2 ; 
 int /*<<< orphan*/  QLCNIC_RCVPEG_STATE ; 
 int QLCNIC_ROMUSB_GLB_SW_RESET ; 
 int FUNC2 (struct qlcnic_adapter*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ROMUSB_GLB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct crb_addr_pair* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct crb_addr_pair*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct qlcnic_adapter*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

int FUNC13(struct qlcnic_adapter *adapter)
{
	int addr, err = 0;
	int i, n, init_delay;
	struct crb_addr_pair *buf;
	unsigned offset;
	u32 off, val;
	struct pci_dev *pdev = adapter->pdev;

	FUNC4(adapter, QLCNIC_CMDPEG_STATE, 0);
	FUNC4(adapter, QLCNIC_RCVPEG_STATE, 0);

	/* Halt all the indiviual PEGs and other blocks */
	/* disable all I2Q */
	FUNC3(adapter, QLCNIC_CRB_I2Q + 0x10, 0x0);
	FUNC3(adapter, QLCNIC_CRB_I2Q + 0x14, 0x0);
	FUNC3(adapter, QLCNIC_CRB_I2Q + 0x18, 0x0);
	FUNC3(adapter, QLCNIC_CRB_I2Q + 0x1c, 0x0);
	FUNC3(adapter, QLCNIC_CRB_I2Q + 0x20, 0x0);
	FUNC3(adapter, QLCNIC_CRB_I2Q + 0x24, 0x0);

	/* disable all niu interrupts */
	FUNC3(adapter, QLCNIC_CRB_NIU + 0x40, 0xff);
	/* disable xge rx/tx */
	FUNC3(adapter, QLCNIC_CRB_NIU + 0x70000, 0x00);
	/* disable xg1 rx/tx */
	FUNC3(adapter, QLCNIC_CRB_NIU + 0x80000, 0x00);
	/* disable sideband mac */
	FUNC3(adapter, QLCNIC_CRB_NIU + 0x90000, 0x00);
	/* disable ap0 mac */
	FUNC3(adapter, QLCNIC_CRB_NIU + 0xa0000, 0x00);
	/* disable ap1 mac */
	FUNC3(adapter, QLCNIC_CRB_NIU + 0xb0000, 0x00);

	/* halt sre */
	val = FUNC2(adapter, QLCNIC_CRB_SRE + 0x1000, &err);
	if (err == -EIO)
		return err;
	FUNC3(adapter, QLCNIC_CRB_SRE + 0x1000, val & (~(0x1)));

	/* halt epg */
	FUNC3(adapter, QLCNIC_CRB_EPG + 0x1300, 0x1);

	/* halt timers */
	FUNC3(adapter, QLCNIC_CRB_TIMER + 0x0, 0x0);
	FUNC3(adapter, QLCNIC_CRB_TIMER + 0x8, 0x0);
	FUNC3(adapter, QLCNIC_CRB_TIMER + 0x10, 0x0);
	FUNC3(adapter, QLCNIC_CRB_TIMER + 0x18, 0x0);
	FUNC3(adapter, QLCNIC_CRB_TIMER + 0x100, 0x0);
	FUNC3(adapter, QLCNIC_CRB_TIMER + 0x200, 0x0);
	/* halt pegs */
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_0 + 0x3c, 1);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_1 + 0x3c, 1);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_2 + 0x3c, 1);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_3 + 0x3c, 1);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_4 + 0x3c, 1);
	FUNC8(20);

	FUNC11(adapter);
	/* big hammer don't reset CAM block on reset */
	FUNC3(adapter, QLCNIC_ROMUSB_GLB_SW_RESET, 0xfeffffff);

	/* Init HW CRB block */
	if (FUNC10(adapter, 0, &n) != 0 || (n != 0xcafecafe) ||
			FUNC10(adapter, 4, &n) != 0) {
		FUNC5(&pdev->dev, "ERROR Reading crb_init area: val:%x\n", n);
		return -EIO;
	}
	offset = n & 0xffffU;
	n = (n >> 16) & 0xffffU;

	if (n >= 1024) {
		FUNC5(&pdev->dev, "QLOGIC card flash not initialized.\n");
		return -EIO;
	}

	buf = FUNC6(n, sizeof(struct crb_addr_pair), GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	for (i = 0; i < n; i++) {
		if (FUNC10(adapter, 8*i + 4*offset, &val) != 0 ||
		FUNC10(adapter, 8*i + 4*offset + 4, &addr) != 0) {
			FUNC7(buf);
			return -EIO;
		}

		buf[i].addr = addr;
		buf[i].data = val;
	}

	for (i = 0; i < n; i++) {

		off = FUNC9(buf[i].addr);
		if (off == QLCNIC_ADDR_ERROR) {
			FUNC5(&pdev->dev, "CRB init value out of range %x\n",
					buf[i].addr);
			continue;
		}
		off += QLCNIC_PCI_CRBSPACE;

		if (off & 1)
			continue;

		/* skipping cold reboot MAGIC */
		if (off == FUNC0(0x1fc))
			continue;
		if (off == (QLCNIC_CRB_I2C0 + 0x1c))
			continue;
		if (off == (ROMUSB_GLB + 0xbc)) /* do not reset PCI */
			continue;
		if (off == (ROMUSB_GLB + 0xa8))
			continue;
		if (off == (ROMUSB_GLB + 0xc8)) /* core clock */
			continue;
		if (off == (ROMUSB_GLB + 0x24)) /* MN clock */
			continue;
		if (off == (ROMUSB_GLB + 0x1c)) /* MS clock */
			continue;
		if ((off & 0x0ff00000) == QLCNIC_CRB_DDR_NET)
			continue;
		/* skip the function enable register */
		if (off == FUNC1(PCIE_SETUP_FUNCTION))
			continue;
		if (off == FUNC1(PCIE_SETUP_FUNCTION2))
			continue;
		if ((off & 0x0ff00000) == QLCNIC_CRB_SMB)
			continue;

		init_delay = 1;
		/* After writing this register, HW needs time for CRB */
		/* to quiet down (else crb_window returns 0xffffffff) */
		if (off == QLCNIC_ROMUSB_GLB_SW_RESET)
			init_delay = 1000;

		FUNC3(adapter, off, buf[i].data);

		FUNC8(init_delay);
	}
	FUNC7(buf);

	/* Initialize protocol process engine */
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_D + 0xec, 0x1e);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_D + 0x4c, 8);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_I + 0x4c, 8);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_0 + 0x8, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_0 + 0xc, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_1 + 0x8, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_1 + 0xc, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_2 + 0x8, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_2 + 0xc, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_3 + 0x8, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_3 + 0xc, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_4 + 0x8, 0);
	FUNC3(adapter, QLCNIC_CRB_PEG_NET_4 + 0xc, 0);
	FUNC12(1000, 1500);

	FUNC4(adapter, QLCNIC_PEG_HALT_STATUS1, 0);
	FUNC4(adapter, QLCNIC_PEG_HALT_STATUS2, 0);

	return 0;
}