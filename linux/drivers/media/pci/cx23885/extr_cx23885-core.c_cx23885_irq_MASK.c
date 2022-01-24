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
typedef  int u32 ;
struct cx23885_tsport {int /*<<< orphan*/  reg_gpcnt; } ;
struct cx23885_dev {size_t board; int /*<<< orphan*/  cx25840_work; int /*<<< orphan*/  sd_ir; struct cx23885_tsport ts2; struct cx23885_tsport ts1; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int ci_type; scalar_t__ portb; scalar_t__ portc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_INT_INT_MSK ; 
 int /*<<< orphan*/  AUDIO_INT_INT_STAT ; 
 int /*<<< orphan*/  AUD_INT_A_GPCNT ; 
 scalar_t__ CX23885_MPEG_DVB ; 
 scalar_t__ CX23885_MPEG_ENCODER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_INT_STAT ; 
 int PCI_MSK_AL_RD ; 
 int PCI_MSK_AL_WR ; 
 int PCI_MSK_APB_DMA ; 
 int PCI_MSK_AUD_EXT ; 
 int PCI_MSK_AUD_INT ; 
 int PCI_MSK_AV_CORE ; 
 int PCI_MSK_GPIO0 ; 
 int PCI_MSK_GPIO1 ; 
 int PCI_MSK_IR ; 
 int PCI_MSK_RISC_RD ; 
 int PCI_MSK_RISC_WR ; 
 int PCI_MSK_VID_A ; 
 int PCI_MSK_VID_B ; 
 int PCI_MSK_VID_C ; 
 int /*<<< orphan*/  VID_A_GPCNT ; 
 int /*<<< orphan*/  VID_A_INT_MSK ; 
 int /*<<< orphan*/  VID_A_INT_STAT ; 
 int /*<<< orphan*/  VID_B_INT_MSK ; 
 int /*<<< orphan*/  VID_B_INT_STAT ; 
 int /*<<< orphan*/  VID_C_INT_MSK ; 
 int /*<<< orphan*/  VID_C_INT_STAT ; 
 scalar_t__ FUNC1 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  core ; 
 scalar_t__ FUNC2 (struct cx23885_dev*,int,int) ; 
 TYPE_1__* cx23885_boards ; 
 scalar_t__ FUNC3 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx23885_dev*,int) ; 
 int FUNC5 (struct cx23885_dev*) ; 
 scalar_t__ FUNC6 (struct cx23885_tsport*,int) ; 
 scalar_t__ FUNC7 (struct cx23885_dev*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,...) ; 
 int /*<<< orphan*/  interrupt_service_routine ; 
 scalar_t__ FUNC11 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct cx23885_dev *dev = dev_id;
	struct cx23885_tsport *ts1 = &dev->ts1;
	struct cx23885_tsport *ts2 = &dev->ts2;
	u32 pci_status, pci_mask;
	u32 vida_status, vida_mask;
	u32 audint_status, audint_mask;
	u32 ts1_status, ts1_mask;
	u32 ts2_status, ts2_mask;
	int vida_count = 0, ts1_count = 0, ts2_count = 0, handled = 0;
	int audint_count = 0;
	bool subdev_handled;

	pci_status = FUNC8(PCI_INT_STAT);
	pci_mask = FUNC5(dev);
	if ((pci_status & pci_mask) == 0) {
		FUNC10(7, "pci_status: 0x%08x  pci_mask: 0x%08x\n",
			pci_status, pci_mask);
		goto out;
	}

	vida_status = FUNC8(VID_A_INT_STAT);
	vida_mask = FUNC8(VID_A_INT_MSK);
	audint_status = FUNC8(AUDIO_INT_INT_STAT);
	audint_mask = FUNC8(AUDIO_INT_INT_MSK);
	ts1_status = FUNC8(VID_B_INT_STAT);
	ts1_mask = FUNC8(VID_B_INT_MSK);
	ts2_status = FUNC8(VID_C_INT_STAT);
	ts2_mask = FUNC8(VID_C_INT_MSK);

	if (((pci_status & pci_mask) == 0) &&
		((ts2_status & ts2_mask) == 0) &&
		((ts1_status & ts1_mask) == 0))
		goto out;

	vida_count = FUNC8(VID_A_GPCNT);
	audint_count = FUNC8(AUD_INT_A_GPCNT);
	ts1_count = FUNC8(ts1->reg_gpcnt);
	ts2_count = FUNC8(ts2->reg_gpcnt);
	FUNC10(7, "pci_status: 0x%08x  pci_mask: 0x%08x\n",
		pci_status, pci_mask);
	FUNC10(7, "vida_status: 0x%08x vida_mask: 0x%08x count: 0x%x\n",
		vida_status, vida_mask, vida_count);
	FUNC10(7, "audint_status: 0x%08x audint_mask: 0x%08x count: 0x%x\n",
		audint_status, audint_mask, audint_count);
	FUNC10(7, "ts1_status: 0x%08x  ts1_mask: 0x%08x count: 0x%x\n",
		ts1_status, ts1_mask, ts1_count);
	FUNC10(7, "ts2_status: 0x%08x  ts2_mask: 0x%08x count: 0x%x\n",
		ts2_status, ts2_mask, ts2_count);

	if (pci_status & (PCI_MSK_RISC_RD | PCI_MSK_RISC_WR |
			  PCI_MSK_AL_RD   | PCI_MSK_AL_WR   | PCI_MSK_APB_DMA |
			  PCI_MSK_VID_C   | PCI_MSK_VID_B   | PCI_MSK_VID_A   |
			  PCI_MSK_AUD_INT | PCI_MSK_AUD_EXT |
			  PCI_MSK_GPIO0   | PCI_MSK_GPIO1   |
			  PCI_MSK_AV_CORE | PCI_MSK_IR)) {

		if (pci_status & PCI_MSK_RISC_RD)
			FUNC10(7, " (PCI_MSK_RISC_RD   0x%08x)\n",
				PCI_MSK_RISC_RD);

		if (pci_status & PCI_MSK_RISC_WR)
			FUNC10(7, " (PCI_MSK_RISC_WR   0x%08x)\n",
				PCI_MSK_RISC_WR);

		if (pci_status & PCI_MSK_AL_RD)
			FUNC10(7, " (PCI_MSK_AL_RD     0x%08x)\n",
				PCI_MSK_AL_RD);

		if (pci_status & PCI_MSK_AL_WR)
			FUNC10(7, " (PCI_MSK_AL_WR     0x%08x)\n",
				PCI_MSK_AL_WR);

		if (pci_status & PCI_MSK_APB_DMA)
			FUNC10(7, " (PCI_MSK_APB_DMA   0x%08x)\n",
				PCI_MSK_APB_DMA);

		if (pci_status & PCI_MSK_VID_C)
			FUNC10(7, " (PCI_MSK_VID_C     0x%08x)\n",
				PCI_MSK_VID_C);

		if (pci_status & PCI_MSK_VID_B)
			FUNC10(7, " (PCI_MSK_VID_B     0x%08x)\n",
				PCI_MSK_VID_B);

		if (pci_status & PCI_MSK_VID_A)
			FUNC10(7, " (PCI_MSK_VID_A     0x%08x)\n",
				PCI_MSK_VID_A);

		if (pci_status & PCI_MSK_AUD_INT)
			FUNC10(7, " (PCI_MSK_AUD_INT   0x%08x)\n",
				PCI_MSK_AUD_INT);

		if (pci_status & PCI_MSK_AUD_EXT)
			FUNC10(7, " (PCI_MSK_AUD_EXT   0x%08x)\n",
				PCI_MSK_AUD_EXT);

		if (pci_status & PCI_MSK_GPIO0)
			FUNC10(7, " (PCI_MSK_GPIO0     0x%08x)\n",
				PCI_MSK_GPIO0);

		if (pci_status & PCI_MSK_GPIO1)
			FUNC10(7, " (PCI_MSK_GPIO1     0x%08x)\n",
				PCI_MSK_GPIO1);

		if (pci_status & PCI_MSK_AV_CORE)
			FUNC10(7, " (PCI_MSK_AV_CORE   0x%08x)\n",
				PCI_MSK_AV_CORE);

		if (pci_status & PCI_MSK_IR)
			FUNC10(7, " (PCI_MSK_IR        0x%08x)\n",
				PCI_MSK_IR);
	}

	if (cx23885_boards[dev->board].ci_type == 1 &&
			(pci_status & (PCI_MSK_GPIO1 | PCI_MSK_GPIO0)))
		handled += FUNC11(dev, pci_status);

	if (cx23885_boards[dev->board].ci_type == 2 &&
			(pci_status & PCI_MSK_GPIO0))
		handled += FUNC1(dev);

	if (ts1_status) {
		if (cx23885_boards[dev->board].portb == CX23885_MPEG_DVB)
			handled += FUNC6(ts1, ts1_status);
		else
		if (cx23885_boards[dev->board].portb == CX23885_MPEG_ENCODER)
			handled += FUNC3(dev, ts1_status);
	}

	if (ts2_status) {
		if (cx23885_boards[dev->board].portc == CX23885_MPEG_DVB)
			handled += FUNC6(ts2, ts2_status);
		else
		if (cx23885_boards[dev->board].portc == CX23885_MPEG_ENCODER)
			handled += FUNC3(dev, ts2_status);
	}

	if (vida_status)
		handled += FUNC7(dev, vida_status);

	if (audint_status)
		handled += FUNC2(dev, audint_status, audint_mask);

	if (pci_status & PCI_MSK_IR) {
		subdev_handled = false;
		FUNC13(dev->sd_ir, core, interrupt_service_routine,
				 pci_status, &subdev_handled);
		if (subdev_handled)
			handled++;
	}

	if ((pci_status & pci_mask) & PCI_MSK_AV_CORE) {
		FUNC4(dev, PCI_MSK_AV_CORE);
		FUNC12(&dev->cx25840_work);
		handled++;
	}

	if (handled)
		FUNC9(PCI_INT_STAT, pci_status & pci_mask);
out:
	return FUNC0(handled);
}