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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct idt_smb_seq {int ccode; int /*<<< orphan*/  bytecnt; int /*<<< orphan*/ * data; } ;
struct idt_csr_seq {int cmd; int /*<<< orphan*/  data; int /*<<< orphan*/  csraddr; } ;
struct idt_89hpesx_dev {int iniccode; int inicsrcmd; int (* smb_write ) (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;int (* smb_read ) (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;int /*<<< orphan*/  smb_mtx; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int CCODE_CSR ; 
 int CSR_OP_READ ; 
 int /*<<< orphan*/  CSR_RD_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CSR_RERR ; 
 int CSR_WERR ; 
 int /*<<< orphan*/  CSR_WRRD_CNT ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct idt_89hpesx_dev*,struct idt_smb_seq*) ; 
 int FUNC7 (struct idt_89hpesx_dev*,struct idt_smb_seq*) ; 

__attribute__((used)) static int FUNC8(struct idt_89hpesx_dev *pdev, u16 csraddr, u32 *data)
{
	struct device *dev = &pdev->client->dev;
	struct idt_csr_seq csrseq;
	struct idt_smb_seq smbseq;
	int ret;

	/* Initialize SMBus sequence fields */
	smbseq.ccode = pdev->iniccode | CCODE_CSR;
	smbseq.data = (u8 *)&csrseq;

	/* Lock IDT SMBus device */
	FUNC4(&pdev->smb_mtx);

	/* Send CSR register address before reading it */
	smbseq.bytecnt = CSR_WRRD_CNT;
	csrseq.cmd = pdev->inicsrcmd | CSR_OP_READ;
	csrseq.csraddr = FUNC1(csraddr);
	ret = pdev->smb_write(pdev, &smbseq);
	if (ret != 0) {
		FUNC2(dev, "Failed to init csr address 0x%04x",
			FUNC0(csraddr));
		goto err_mutex_unlock;
	}

	/* Perform read operation */
	smbseq.bytecnt = CSR_RD_CNT;
	ret = pdev->smb_read(pdev, &smbseq);
	if (ret != 0) {
		FUNC2(dev, "Failed to read csr 0x%04hx",
			FUNC0(csraddr));
		goto err_mutex_unlock;
	}

	/* Check whether IDT successfully retrieved CSR data */
	if (csrseq.cmd & (CSR_RERR | CSR_WERR)) {
		FUNC2(dev, "IDT failed to perform CSR r/w");
		ret = -EREMOTEIO;
		goto err_mutex_unlock;
	}

	/* Save data retrieved from IDT */
	*data = FUNC3(csrseq.data);

	/* Unlock IDT SMBus device */
err_mutex_unlock:
	FUNC5(&pdev->smb_mtx);

	return ret;
}