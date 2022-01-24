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
typedef  int uint32_t ;
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; int size; int oobsize; } ;
struct cafe_priv {int ctl2; int ctl1; int data_pos; int datalen; TYPE_1__* pdev; scalar_t__ mmio; scalar_t__ usedma; int /*<<< orphan*/  nr_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTRL1_CHIPSELECT ; 
 int /*<<< orphan*/  NAND_ADDR1 ; 
 int /*<<< orphan*/  NAND_ADDR2 ; 
#define  NAND_CMD_CACHEDPROG 135 
#define  NAND_CMD_ERASE1 134 
#define  NAND_CMD_ERASE2 133 
#define  NAND_CMD_PAGEPROG 132 
 unsigned int NAND_CMD_READ0 ; 
 unsigned int NAND_CMD_READ1 ; 
 unsigned int NAND_CMD_READID ; 
 unsigned int NAND_CMD_READOOB ; 
 int NAND_CMD_READSTART ; 
#define  NAND_CMD_RNDIN 131 
#define  NAND_CMD_RNDOUT 130 
 int NAND_CMD_RNDOUTSTART ; 
#define  NAND_CMD_SEQIN 129 
#define  NAND_CMD_STATUS 128 
 int /*<<< orphan*/  NAND_CTRL1 ; 
 int /*<<< orphan*/  NAND_CTRL2 ; 
 int /*<<< orphan*/  NAND_DATA_LEN ; 
 int /*<<< orphan*/  NAND_DMA_CTRL ; 
 int /*<<< orphan*/  NAND_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 int FUNC2 (struct cafe_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cafe_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct cafe_priv* FUNC5 (struct nand_chip*) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  regdebug ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct nand_chip *chip, unsigned command,
			      int column, int page_addr)
{
	struct mtd_info *mtd = FUNC6(chip);
	struct cafe_priv *cafe = FUNC5(chip);
	int adrbytes = 0;
	uint32_t ctl1;
	uint32_t doneint = 0x80000000;

	FUNC1(&cafe->pdev->dev, "cmdfunc %02x, 0x%x, 0x%x\n",
		command, column, page_addr);

	if (command == NAND_CMD_ERASE2 || command == NAND_CMD_PAGEPROG) {
		/* Second half of a command we already calculated */
		FUNC3(cafe, cafe->ctl2 | 0x100 | command, NAND_CTRL2);
		ctl1 = cafe->ctl1;
		cafe->ctl2 &= ~(1<<30);
		FUNC1(&cafe->pdev->dev, "Continue command, ctl1 %08x, #data %d\n",
			  cafe->ctl1, cafe->nr_data);
		goto do_command;
	}
	/* Reset ECC engine */
	FUNC3(cafe, 0, NAND_CTRL2);

	/* Emulate NAND_CMD_READOOB on large-page chips */
	if (mtd->writesize > 512 &&
	    command == NAND_CMD_READOOB) {
		column += mtd->writesize;
		command = NAND_CMD_READ0;
	}

	/* FIXME: Do we need to send read command before sending data
	   for small-page chips, to position the buffer correctly? */

	if (column != -1) {
		FUNC3(cafe, column, NAND_ADDR1);
		adrbytes = 2;
		if (page_addr != -1)
			goto write_adr2;
	} else if (page_addr != -1) {
		FUNC3(cafe, page_addr & 0xffff, NAND_ADDR1);
		page_addr >>= 16;
	write_adr2:
		FUNC3(cafe, page_addr, NAND_ADDR2);
		adrbytes += 2;
		if (mtd->size > mtd->writesize << 16)
			adrbytes++;
	}

	cafe->data_pos = cafe->datalen = 0;

	/* Set command valid bit, mask in the chip select bit  */
	ctl1 = 0x80000000 | command | (cafe->ctl1 & CTRL1_CHIPSELECT);

	/* Set RD or WR bits as appropriate */
	if (command == NAND_CMD_READID || command == NAND_CMD_STATUS) {
		ctl1 |= (1<<26); /* rd */
		/* Always 5 bytes, for now */
		cafe->datalen = 4;
		/* And one address cycle -- even for STATUS, since the controller doesn't work without */
		adrbytes = 1;
	} else if (command == NAND_CMD_READ0 || command == NAND_CMD_READ1 ||
		   command == NAND_CMD_READOOB || command == NAND_CMD_RNDOUT) {
		ctl1 |= 1<<26; /* rd */
		/* For now, assume just read to end of page */
		cafe->datalen = mtd->writesize + mtd->oobsize - column;
	} else if (command == NAND_CMD_SEQIN)
		ctl1 |= 1<<25; /* wr */

	/* Set number of address bytes */
	if (adrbytes)
		ctl1 |= ((adrbytes-1)|8) << 27;

	if (command == NAND_CMD_SEQIN || command == NAND_CMD_ERASE1) {
		/* Ignore the first command of a pair; the hardware
		   deals with them both at once, later */
		cafe->ctl1 = ctl1;
		FUNC1(&cafe->pdev->dev, "Setup for delayed command, ctl1 %08x, dlen %x\n",
			  cafe->ctl1, cafe->datalen);
		return;
	}
	/* RNDOUT and READ0 commands need a following byte */
	if (command == NAND_CMD_RNDOUT)
		FUNC3(cafe, cafe->ctl2 | 0x100 | NAND_CMD_RNDOUTSTART, NAND_CTRL2);
	else if (command == NAND_CMD_READ0 && mtd->writesize > 512)
		FUNC3(cafe, cafe->ctl2 | 0x100 | NAND_CMD_READSTART, NAND_CTRL2);

 do_command:
	FUNC1(&cafe->pdev->dev, "dlen %x, ctl1 %x, ctl2 %x\n",
		cafe->datalen, ctl1, FUNC2(cafe, NAND_CTRL2));

	/* NB: The datasheet lies -- we really should be subtracting 1 here */
	FUNC3(cafe, cafe->datalen, NAND_DATA_LEN);
	FUNC3(cafe, 0x90000000, NAND_IRQ);
	if (cafe->usedma && (ctl1 & (3<<25))) {
		uint32_t dmactl = 0xc0000000 + cafe->datalen;
		/* If WR or RD bits set, set up DMA */
		if (ctl1 & (1<<26)) {
			/* It's a read */
			dmactl |= (1<<29);
			/* ... so it's done when the DMA is done, not just
			   the command. */
			doneint = 0x10000000;
		}
		FUNC3(cafe, dmactl, NAND_DMA_CTRL);
	}
	cafe->datalen = 0;

	if (FUNC12(regdebug)) {
		int i;
		FUNC9("About to write command %08x to register 0\n", ctl1);
		for (i=4; i< 0x5c; i+=4)
			FUNC9("Register %x: %08x\n", i, FUNC10(cafe->mmio + i));
	}

	FUNC3(cafe, ctl1, NAND_CTRL1);
	/* Apply this short delay always to ensure that we do wait tWB in
	 * any case on any machine. */
	FUNC8(100);

	if (1) {
		int c;
		uint32_t irqs;

		for (c = 500000; c != 0; c--) {
			irqs = FUNC2(cafe, NAND_IRQ);
			if (irqs & doneint)
				break;
			FUNC11(1);
			if (!(c % 100000))
				FUNC1(&cafe->pdev->dev, "Wait for ready, IRQ %x\n", irqs);
			FUNC4();
		}
		FUNC3(cafe, doneint, NAND_IRQ);
		FUNC1(&cafe->pdev->dev, "Command %x completed after %d usec, irqs %x (%x)\n",
			     command, 500000-c, irqs, FUNC2(cafe, NAND_IRQ));
	}

	FUNC0(cafe->ctl2 & (1<<30));

	switch (command) {

	case NAND_CMD_CACHEDPROG:
	case NAND_CMD_PAGEPROG:
	case NAND_CMD_ERASE1:
	case NAND_CMD_ERASE2:
	case NAND_CMD_SEQIN:
	case NAND_CMD_RNDIN:
	case NAND_CMD_STATUS:
	case NAND_CMD_RNDOUT:
		FUNC3(cafe, cafe->ctl2, NAND_CTRL2);
		return;
	}
	FUNC7(chip);
	FUNC3(cafe, cafe->ctl2, NAND_CTRL2);
}