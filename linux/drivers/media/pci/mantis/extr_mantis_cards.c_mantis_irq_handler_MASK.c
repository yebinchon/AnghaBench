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
struct mantis_pci {int mantis_int_stat; int mantis_int_mask; int gpif_status; int busy_block; int /*<<< orphan*/  i2c_wq; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  uart_work; int /*<<< orphan*/  intmask_lock; struct mantis_ca* mantis_ca; } ;
struct mantis_ca {int /*<<< orphan*/  hif_evm_work; int /*<<< orphan*/  hif_write_wq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int MANTIS_GPIF_EXTIRQ ; 
 int MANTIS_GPIF_OTHERR ; 
 int /*<<< orphan*/  MANTIS_GPIF_STATUS ; 
 int MANTIS_GPIF_WRACK ; 
 int MANTIS_INT_FTRGT ; 
 int MANTIS_INT_I2CDONE ; 
 int MANTIS_INT_I2CRACK ; 
 int MANTIS_INT_IRQ0 ; 
 int MANTIS_INT_IRQ1 ; 
 int /*<<< orphan*/  MANTIS_INT_MASK ; 
 int MANTIS_INT_OCERR ; 
 int MANTIS_INT_PABORT ; 
 int MANTIS_INT_PCMCIA0 ; 
 int MANTIS_INT_PCMCIA1 ; 
 int MANTIS_INT_PCMCIA2 ; 
 int MANTIS_INT_PCMCIA3 ; 
 int MANTIS_INT_PCMCIA4 ; 
 int MANTIS_INT_PCMCIA5 ; 
 int MANTIS_INT_PCMCIA6 ; 
 int MANTIS_INT_PCMCIA7 ; 
 int MANTIS_INT_PPERR ; 
 int MANTIS_INT_RIPERR ; 
 int MANTIS_INT_RISCEN ; 
 int MANTIS_INT_RISCI ; 
 int MANTIS_INT_RISCSTAT ; 
 int /*<<< orphan*/  MANTIS_INT_STAT ; 
 int MANTIS_SBUF_WSTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/ * label ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	u32 stat = 0, mask = 0;
	u32 rst_stat = 0, rst_mask = 0;

	struct mantis_pci *mantis;
	struct mantis_ca *ca;

	mantis = (struct mantis_pci *) dev_id;
	if (FUNC7(mantis == NULL)) {
		FUNC0(MANTIS_ERROR, 1, "Mantis == NULL");
		return IRQ_NONE;
	}
	ca = mantis->mantis_ca;

	stat = FUNC1(MANTIS_INT_STAT);
	mask = FUNC1(MANTIS_INT_MASK);
	if (!(stat & mask))
		return IRQ_NONE;

	rst_mask  = MANTIS_GPIF_WRACK  |
		    MANTIS_GPIF_OTHERR |
		    MANTIS_SBUF_WSTO   |
		    MANTIS_GPIF_EXTIRQ;

	rst_stat  = FUNC1(MANTIS_GPIF_STATUS);
	rst_stat &= rst_mask;
	FUNC2(rst_stat, MANTIS_GPIF_STATUS);

	mantis->mantis_int_stat = stat;
	mantis->mantis_int_mask = mask;
	FUNC0(MANTIS_DEBUG, 0, "\n-- Stat=<%02x> Mask=<%02x> --", stat, mask);
	if (stat & MANTIS_INT_RISCEN) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[0]);
	}
	if (stat & MANTIS_INT_IRQ0) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[1]);
		mantis->gpif_status = rst_stat;
		FUNC8(&ca->hif_write_wq);
		FUNC3(&ca->hif_evm_work);
	}
	if (stat & MANTIS_INT_IRQ1) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[2]);
		FUNC4(&mantis->intmask_lock);
		FUNC2(FUNC1(MANTIS_INT_MASK) & ~MANTIS_INT_IRQ1,
			MANTIS_INT_MASK);
		FUNC5(&mantis->intmask_lock);
		FUNC3(&mantis->uart_work);
	}
	if (stat & MANTIS_INT_OCERR) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[3]);
	}
	if (stat & MANTIS_INT_PABORT) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[4]);
	}
	if (stat & MANTIS_INT_RIPERR) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[5]);
	}
	if (stat & MANTIS_INT_PPERR) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[6]);
	}
	if (stat & MANTIS_INT_FTRGT) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[7]);
	}
	if (stat & MANTIS_INT_RISCI) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[8]);
		mantis->busy_block = (stat & MANTIS_INT_RISCSTAT) >> 28;
		FUNC6(&mantis->tasklet);
	}
	if (stat & MANTIS_INT_I2CDONE) {
		FUNC0(MANTIS_DEBUG, 0, "<%s>", label[9]);
		FUNC8(&mantis->i2c_wq);
	}
	FUNC2(stat, MANTIS_INT_STAT);
	stat &= ~(MANTIS_INT_RISCEN   | MANTIS_INT_I2CDONE |
		  MANTIS_INT_I2CRACK  | MANTIS_INT_PCMCIA7 |
		  MANTIS_INT_PCMCIA6  | MANTIS_INT_PCMCIA5 |
		  MANTIS_INT_PCMCIA4  | MANTIS_INT_PCMCIA3 |
		  MANTIS_INT_PCMCIA2  | MANTIS_INT_PCMCIA1 |
		  MANTIS_INT_PCMCIA0  | MANTIS_INT_IRQ1	   |
		  MANTIS_INT_IRQ0     | MANTIS_INT_OCERR   |
		  MANTIS_INT_PABORT   | MANTIS_INT_RIPERR  |
		  MANTIS_INT_PPERR    | MANTIS_INT_FTRGT   |
		  MANTIS_INT_RISCI);

	if (stat)
		FUNC0(MANTIS_DEBUG, 0, "<Unknown> Stat=<%02x> Mask=<%02x>", stat, mask);

	FUNC0(MANTIS_DEBUG, 0, "\n");
	return IRQ_HANDLED;
}