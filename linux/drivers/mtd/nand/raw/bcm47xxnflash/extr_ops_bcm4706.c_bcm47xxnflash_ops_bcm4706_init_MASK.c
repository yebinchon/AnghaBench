#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_10__ {int chip_delay; int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  cmd_ctrl; int /*<<< orphan*/  select_chip; } ;
struct nand_chip {TYPE_2__ legacy; } ;
struct TYPE_11__ {int /*<<< orphan*/  mode; } ;
struct TYPE_9__ {void* get_features; void* set_features; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  cmdfunc; } ;
struct TYPE_12__ {int page_shift; int /*<<< orphan*/  base; TYPE_3__ ecc; int /*<<< orphan*/  bbt_options; TYPE_1__ legacy; } ;
struct bcm47xxnflash {TYPE_5__* cc; TYPE_4__ nand_chip; } ;
struct TYPE_13__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_4706_FLASHSCFG ; 
 int /*<<< orphan*/  BCMA_CC_4706_FLASHSCFG_NF1 ; 
 int BCMA_CC_CHIPST_4706_PKG_OPTION ; 
 int /*<<< orphan*/  BCMA_CC_NFLASH_CONF ; 
 int /*<<< orphan*/  BCMA_CC_NFLASH_WAITCNT0 ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  NAND_BBT_USE_FLASH ; 
 int /*<<< orphan*/  NAND_ECC_NONE ; 
 int /*<<< orphan*/  bcm47xxnflash_ops_bcm4706_cmd_ctrl ; 
 int /*<<< orphan*/  bcm47xxnflash_ops_bcm4706_cmdfunc ; 
 int /*<<< orphan*/  bcm47xxnflash_ops_bcm4706_dev_ready ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  bcm47xxnflash_ops_bcm4706_read_buf ; 
 int /*<<< orphan*/  bcm47xxnflash_ops_bcm4706_read_byte ; 
 int /*<<< orphan*/  bcm47xxnflash_ops_bcm4706_select_chip ; 
 int /*<<< orphan*/  bcm47xxnflash_ops_bcm4706_write_buf ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_5__*,int) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 void* nand_get_set_features_notsupp ; 
 int FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long) ; 

int FUNC10(struct bcm47xxnflash *b47n)
{
	struct nand_chip *nand_chip = (struct nand_chip *)&b47n->nand_chip;
	int err;
	u32 freq;
	u16 clock;
	u8 w0, w1, w2, w3, w4;

	unsigned long chipsize; /* MiB */
	u8 tbits, col_bits, col_size, row_bits, row_bsize;
	u32 val;

	nand_chip->legacy.select_chip = bcm47xxnflash_ops_bcm4706_select_chip;
	nand_chip->legacy.cmd_ctrl = bcm47xxnflash_ops_bcm4706_cmd_ctrl;
	nand_chip->legacy.dev_ready = bcm47xxnflash_ops_bcm4706_dev_ready;
	b47n->nand_chip.legacy.cmdfunc = bcm47xxnflash_ops_bcm4706_cmdfunc;
	b47n->nand_chip.legacy.read_byte = bcm47xxnflash_ops_bcm4706_read_byte;
	b47n->nand_chip.legacy.read_buf = bcm47xxnflash_ops_bcm4706_read_buf;
	b47n->nand_chip.legacy.write_buf = bcm47xxnflash_ops_bcm4706_write_buf;
	b47n->nand_chip.legacy.set_features = nand_get_set_features_notsupp;
	b47n->nand_chip.legacy.get_features = nand_get_set_features_notsupp;

	nand_chip->legacy.chip_delay = 50;
	b47n->nand_chip.bbt_options = NAND_BBT_USE_FLASH;
	b47n->nand_chip.ecc.mode = NAND_ECC_NONE; /* TODO: implement ECC */

	/* Enable NAND flash access */
	FUNC2(b47n->cc, BCMA_CC_4706_FLASHSCFG,
		      BCMA_CC_4706_FLASHSCFG_NF1);

	/* Configure wait counters */
	if (b47n->cc->status & BCMA_CC_CHIPST_4706_PKG_OPTION) {
		/* 400 MHz */
		freq = 400000000 / 4;
	} else {
		freq = FUNC4(b47n->cc, 4);
		freq = (freq & 0xFFF) >> 3;
		/* Fixed reference clock 25 MHz and m = 2 */
		freq = (freq * 25000000 / 2) / 4;
	}
	clock = freq / 1000000;
	w0 = FUNC0(15, clock);
	w1 = FUNC0(20, clock);
	w2 = FUNC0(10, clock);
	w3 = FUNC0(10, clock);
	w4 = FUNC0(100, clock);
	FUNC3(b47n->cc, BCMA_CC_NFLASH_WAITCNT0,
			(w4 << 24 | w3 << 18 | w2 << 12 | w1 << 6 | w0));

	/* Scan NAND */
	err = FUNC7(&b47n->nand_chip, 1);
	if (err) {
		FUNC9("Could not scan NAND flash: %d\n", err);
		goto exit;
	}

	/* Configure FLASH */
	chipsize = FUNC8(&b47n->nand_chip.base) >> 20;
	tbits = FUNC5(chipsize); /* find first bit set */
	if (!tbits || tbits != FUNC6(chipsize)) {
		FUNC9("Invalid flash size: 0x%lX\n", chipsize);
		err = -ENOTSUPP;
		goto exit;
	}
	tbits += 19; /* Broadcom increases *index* by 20, we increase *pos* */

	col_bits = b47n->nand_chip.page_shift + 1;
	col_size = (col_bits + 7) / 8;

	row_bits = tbits - col_bits + 1;
	row_bsize = (row_bits + 7) / 8;

	val = ((row_bsize - 1) << 6) | ((col_size - 1) << 4) | 2;
	FUNC3(b47n->cc, BCMA_CC_NFLASH_CONF, val);

exit:
	if (err)
		FUNC1(b47n->cc, BCMA_CC_4706_FLASHSCFG,
			       ~BCMA_CC_4706_FLASHSCFG_NF1);
	return err;
}