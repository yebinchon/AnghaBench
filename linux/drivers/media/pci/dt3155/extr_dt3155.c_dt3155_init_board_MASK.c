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
typedef  scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct dt3155_priv {int config; scalar_t__ regs; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ADDR_ERR_EVEN ; 
 int ADDR_ERR_ODD ; 
 int /*<<< orphan*/  AD_ADDR ; 
 int /*<<< orphan*/  AD_CMD ; 
 int AD_CMD_REG ; 
 int /*<<< orphan*/  AD_LUT ; 
 int AD_NEG_REF ; 
 int AD_POS_REF ; 
 int /*<<< orphan*/  CONFIG ; 
 scalar_t__ CSR1 ; 
 scalar_t__ DT3155_ID ; 
 int /*<<< orphan*/  DT_ID ; 
 int ENODEV ; 
 scalar_t__ EVEN_FLD_MASK ; 
 scalar_t__ EVEN_PIXEL_FMT ; 
 int FIFO_EN ; 
 scalar_t__ FIFO_FLAG_CNT ; 
 scalar_t__ FIFO_TRIGER ; 
 int FLD_CRPT_EVEN ; 
 int FLD_CRPT_ODD ; 
 int FLD_DN_EVEN ; 
 int FLD_DN_ODD ; 
 int FLD_END_EVEN ; 
 int FLD_END_ODD ; 
 int FLD_START ; 
 scalar_t__ IIC_CLK_DUR ; 
 scalar_t__ INT_CSR ; 
 scalar_t__ MASK_LENGTH ; 
 scalar_t__ ODD_FLD_MASK ; 
 scalar_t__ ODD_PIXEL_FMT ; 
 int /*<<< orphan*/  PM_LUT_ADDR ; 
 int /*<<< orphan*/  PM_LUT_DATA ; 
 int PM_LUT_PGM ; 
 int PM_LUT_SEL ; 
 scalar_t__ RETRY_WAIT_CNT ; 
 int SRST ; 
 int SYNC_CNL_1 ; 
 int SYNC_LVL_3 ; 
 int VIDEO_CNL_1 ; 
 scalar_t__ XFER_MODE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct dt3155_priv *pd)
{
	struct pci_dev *pdev = pd->pdev;
	int i;
	u8 tmp = 0;

	FUNC2(pdev); /* dt3155 needs it */

	/*  resetting the adapter  */
	FUNC0(ADDR_ERR_ODD | ADDR_ERR_EVEN | FLD_CRPT_ODD | FLD_CRPT_EVEN |
			FLD_DN_ODD | FLD_DN_EVEN, pd->regs + CSR1);
	FUNC1(20);

	/*  initializing adapter registers  */
	FUNC0(FIFO_EN | SRST, pd->regs + CSR1);
	FUNC0(0xEEEEEE01, pd->regs + EVEN_PIXEL_FMT);
	FUNC0(0xEEEEEE01, pd->regs + ODD_PIXEL_FMT);
	FUNC0(0x00000020, pd->regs + FIFO_TRIGER);
	FUNC0(0x00000103, pd->regs + XFER_MODE);
	FUNC0(0, pd->regs + RETRY_WAIT_CNT);
	FUNC0(0, pd->regs + INT_CSR);
	FUNC0(1, pd->regs + EVEN_FLD_MASK);
	FUNC0(1, pd->regs + ODD_FLD_MASK);
	FUNC0(0, pd->regs + MASK_LENGTH);
	FUNC0(0x0005007C, pd->regs + FIFO_FLAG_CNT);
	FUNC0(0x01010101, pd->regs + IIC_CLK_DUR);

	/* verifying that we have a DT3155 board (not just a SAA7116 chip) */
	FUNC3(pd->regs, DT_ID, &tmp);
	if (tmp != DT3155_ID)
		return -ENODEV;

	/* initialize AD LUT */
	FUNC4(pd->regs, AD_ADDR, 0);
	for (i = 0; i < 256; i++)
		FUNC4(pd->regs, AD_LUT, i);

	/* initialize ADC references */
	/* FIXME: pos_ref & neg_ref depend on VT_50HZ */
	FUNC4(pd->regs, AD_ADDR, AD_CMD_REG);
	FUNC4(pd->regs, AD_CMD, VIDEO_CNL_1 | SYNC_CNL_1 | SYNC_LVL_3);
	FUNC4(pd->regs, AD_ADDR, AD_POS_REF);
	FUNC4(pd->regs, AD_CMD, 34);
	FUNC4(pd->regs, AD_ADDR, AD_NEG_REF);
	FUNC4(pd->regs, AD_CMD, 0);

	/* initialize PM LUT */
	FUNC4(pd->regs, CONFIG, pd->config | PM_LUT_PGM);
	for (i = 0; i < 256; i++) {
		FUNC4(pd->regs, PM_LUT_ADDR, i);
		FUNC4(pd->regs, PM_LUT_DATA, i);
	}
	FUNC4(pd->regs, CONFIG, pd->config | PM_LUT_PGM | PM_LUT_SEL);
	for (i = 0; i < 256; i++) {
		FUNC4(pd->regs, PM_LUT_ADDR, i);
		FUNC4(pd->regs, PM_LUT_DATA, i);
	}
	FUNC4(pd->regs, CONFIG, pd->config); /*  ACQ_MODE_EVEN  */

	/* select channel 1 for input and set sync level */
	FUNC4(pd->regs, AD_ADDR, AD_CMD_REG);
	FUNC4(pd->regs, AD_CMD, VIDEO_CNL_1 | SYNC_CNL_1 | SYNC_LVL_3);

	/* disable all irqs, clear all irq flags */
	FUNC0(FLD_START | FLD_END_EVEN | FLD_END_ODD,
			pd->regs + INT_CSR);

	return 0;
}