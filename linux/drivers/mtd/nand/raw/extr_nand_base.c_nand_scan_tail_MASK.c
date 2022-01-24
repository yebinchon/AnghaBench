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
struct nand_ecc_ctrl {int mode; scalar_t__ algo; int size; int strength; int bytes; int steps; int total; void* calc_buf; void* code_buf; void* write_oob; void* write_oob_raw; void* read_oob; void* read_oob_raw; scalar_t__ calculate; scalar_t__ correct; void* write_page_raw; void* read_page_raw; void* write_page; void* read_page; int /*<<< orphan*/  hwctl; int /*<<< orphan*/  write_subpage; int /*<<< orphan*/  read_subpage; } ;
struct TYPE_2__ {int page; } ;
struct nand_chip {int bbt_options; int options; int subpagesize; int page_shift; void* data_buf; int /*<<< orphan*/  base; TYPE_1__ pagecache; void* oob_poi; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; int oobsize; int ecc_strength; int ecc_step_size; int oobavail; int subpage_sft; scalar_t__ bitflip_threshold; int /*<<< orphan*/  _max_bad_blocks; int /*<<< orphan*/  _block_markbad; int /*<<< orphan*/  _block_isbad; int /*<<< orphan*/  _block_isreserved; int /*<<< orphan*/  _reboot; int /*<<< orphan*/  _resume; int /*<<< orphan*/  _suspend; int /*<<< orphan*/ * _unlock; int /*<<< orphan*/ * _lock; int /*<<< orphan*/  _sync; int /*<<< orphan*/  _write_oob; int /*<<< orphan*/  _read_oob; int /*<<< orphan*/  _panic_write; int /*<<< orphan*/ * _unpoint; int /*<<< orphan*/ * _point; int /*<<< orphan*/  _erase; int /*<<< orphan*/  flags; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; int /*<<< orphan*/  ooblayout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_CAP_ROM ; 
 int NAND_BBT_NO_OOB_BBM ; 
 int NAND_BBT_USE_FLASH ; 
 scalar_t__ NAND_ECC_BCH ; 
 scalar_t__ NAND_ECC_HAMMING ; 
#define  NAND_ECC_HW 133 
#define  NAND_ECC_HW_OOB_FIRST 132 
#define  NAND_ECC_HW_SYNDROME 131 
#define  NAND_ECC_NONE 130 
#define  NAND_ECC_ON_DIE 129 
#define  NAND_ECC_SOFT 128 
 int NAND_NO_SUBPAGE_WRITE ; 
 int NAND_ROM ; 
 int NAND_SKIP_BBTSCAN ; 
 int NAND_SUBPAGE_READ ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nand_block_isbad ; 
 int /*<<< orphan*/  nand_block_isreserved ; 
 int /*<<< orphan*/  nand_block_markbad ; 
 int FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*) ; 
 int /*<<< orphan*/  nand_erase ; 
 int FUNC10 (struct nand_chip*) ; 
 scalar_t__ FUNC11 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct nand_chip*) ; 
 int FUNC13 (struct nand_chip*) ; 
 int /*<<< orphan*/  nand_ooblayout_lp_hamming_ops ; 
 int /*<<< orphan*/  nand_ooblayout_lp_ops ; 
 int /*<<< orphan*/  nand_ooblayout_sp_ops ; 
 int /*<<< orphan*/  nand_read_oob ; 
 void* nand_read_oob_std ; 
 void* nand_read_oob_syndrome ; 
 void* nand_read_page_hwecc ; 
 void* nand_read_page_hwecc_oob_first ; 
 void* nand_read_page_raw ; 
 void* nand_read_page_raw_syndrome ; 
 void* nand_read_page_syndrome ; 
 int /*<<< orphan*/  nand_read_subpage ; 
 int /*<<< orphan*/  nand_resume ; 
 int /*<<< orphan*/  FUNC14 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct nand_chip*) ; 
 int FUNC16 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  nand_shutdown ; 
 int /*<<< orphan*/  nand_suspend ; 
 int /*<<< orphan*/  nand_sync ; 
 struct mtd_info* FUNC17 (struct nand_chip*) ; 
 int /*<<< orphan*/  nand_write_oob ; 
 void* nand_write_oob_std ; 
 void* nand_write_oob_syndrome ; 
 void* nand_write_page_hwecc ; 
 void* nand_write_page_raw ; 
 void* nand_write_page_raw_syndrome ; 
 void* nand_write_page_syndrome ; 
 int /*<<< orphan*/  nand_write_subpage_hwecc ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nanddev_mtd_max_bad_blocks ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panic_nand_write ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  rawnand_ops ; 

__attribute__((used)) static int FUNC22(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC17(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	int ret, i;

	/* New bad blocks should be marked in OOB, flash-based BBT, or both */
	if (FUNC2((chip->bbt_options & NAND_BBT_NO_OOB_BBM) &&
		   !(chip->bbt_options & NAND_BBT_USE_FLASH))) {
		return -EINVAL;
	}

	chip->data_buf = FUNC4(mtd->writesize + mtd->oobsize, GFP_KERNEL);
	if (!chip->data_buf)
		return -ENOMEM;

	/*
	 * FIXME: some NAND manufacturer drivers expect the first die to be
	 * selected when manufacturer->init() is called. They should be fixed
	 * to explictly select the relevant die when interacting with the NAND
	 * chip.
	 */
	FUNC14(chip, 0);
	ret = FUNC13(chip);
	FUNC8(chip);
	if (ret)
		goto err_free_buf;

	/* Set the internal oob buffer location, just after the page data */
	chip->oob_poi = chip->data_buf + mtd->writesize;

	/*
	 * If no default placement scheme is given, select an appropriate one.
	 */
	if (!mtd->ooblayout &&
	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_BCH)) {
		switch (mtd->oobsize) {
		case 8:
		case 16:
			FUNC6(mtd, &nand_ooblayout_sp_ops);
			break;
		case 64:
		case 128:
			FUNC6(mtd, &nand_ooblayout_lp_hamming_ops);
			break;
		default:
			/*
			 * Expose the whole OOB area to users if ECC_NONE
			 * is passed. We could do that for all kind of
			 * ->oobsize, but we must keep the old large/small
			 * page with ECC layout when ->oobsize <= 128 for
			 * compatibility reasons.
			 */
			if (ecc->mode == NAND_ECC_NONE) {
				FUNC6(mtd,
						&nand_ooblayout_lp_ops);
				break;
			}

			FUNC1(1, "No oob scheme defined for oobsize %d\n",
				mtd->oobsize);
			ret = -EINVAL;
			goto err_nand_manuf_cleanup;
		}
	}

	/*
	 * Check ECC mode, default to software if 3byte/512byte hardware ECC is
	 * selected and we have 256 byte pagesize fallback to software ECC
	 */

	switch (ecc->mode) {
	case NAND_ECC_HW_OOB_FIRST:
		/* Similar to NAND_ECC_HW, but a separate read_page handle */
		if (!ecc->calculate || !ecc->correct || !ecc->hwctl) {
			FUNC1(1, "No ECC functions supplied; hardware ECC not possible\n");
			ret = -EINVAL;
			goto err_nand_manuf_cleanup;
		}
		if (!ecc->read_page)
			ecc->read_page = nand_read_page_hwecc_oob_first;
		/* fall through */

	case NAND_ECC_HW:
		/* Use standard hwecc read page function? */
		if (!ecc->read_page)
			ecc->read_page = nand_read_page_hwecc;
		if (!ecc->write_page)
			ecc->write_page = nand_write_page_hwecc;
		if (!ecc->read_page_raw)
			ecc->read_page_raw = nand_read_page_raw;
		if (!ecc->write_page_raw)
			ecc->write_page_raw = nand_write_page_raw;
		if (!ecc->read_oob)
			ecc->read_oob = nand_read_oob_std;
		if (!ecc->write_oob)
			ecc->write_oob = nand_write_oob_std;
		if (!ecc->read_subpage)
			ecc->read_subpage = nand_read_subpage;
		if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
			ecc->write_subpage = nand_write_subpage_hwecc;
		/* fall through */

	case NAND_ECC_HW_SYNDROME:
		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
		    (!ecc->read_page ||
		     ecc->read_page == nand_read_page_hwecc ||
		     !ecc->write_page ||
		     ecc->write_page == nand_write_page_hwecc)) {
			FUNC1(1, "No ECC functions supplied; hardware ECC not possible\n");
			ret = -EINVAL;
			goto err_nand_manuf_cleanup;
		}
		/* Use standard syndrome read/write page function? */
		if (!ecc->read_page)
			ecc->read_page = nand_read_page_syndrome;
		if (!ecc->write_page)
			ecc->write_page = nand_write_page_syndrome;
		if (!ecc->read_page_raw)
			ecc->read_page_raw = nand_read_page_raw_syndrome;
		if (!ecc->write_page_raw)
			ecc->write_page_raw = nand_write_page_raw_syndrome;
		if (!ecc->read_oob)
			ecc->read_oob = nand_read_oob_syndrome;
		if (!ecc->write_oob)
			ecc->write_oob = nand_write_oob_syndrome;

		if (mtd->writesize >= ecc->size) {
			if (!ecc->strength) {
				FUNC1(1, "Driver must set ecc.strength when using hardware ECC\n");
				ret = -EINVAL;
				goto err_nand_manuf_cleanup;
			}
			break;
		}
		FUNC21("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
			ecc->size, mtd->writesize);
		ecc->mode = NAND_ECC_SOFT;
		ecc->algo = NAND_ECC_HAMMING;
		/* fall through */

	case NAND_ECC_SOFT:
		ret = FUNC15(chip);
		if (ret) {
			ret = -EINVAL;
			goto err_nand_manuf_cleanup;
		}
		break;

	case NAND_ECC_ON_DIE:
		if (!ecc->read_page || !ecc->write_page) {
			FUNC1(1, "No ECC functions supplied; on-die ECC not possible\n");
			ret = -EINVAL;
			goto err_nand_manuf_cleanup;
		}
		if (!ecc->read_oob)
			ecc->read_oob = nand_read_oob_std;
		if (!ecc->write_oob)
			ecc->write_oob = nand_write_oob_std;
		break;

	case NAND_ECC_NONE:
		FUNC21("NAND_ECC_NONE selected by board driver. This is not recommended!\n");
		ecc->read_page = nand_read_page_raw;
		ecc->write_page = nand_write_page_raw;
		ecc->read_oob = nand_read_oob_std;
		ecc->read_page_raw = nand_read_page_raw;
		ecc->write_page_raw = nand_write_page_raw;
		ecc->write_oob = nand_write_oob_std;
		ecc->size = mtd->writesize;
		ecc->bytes = 0;
		ecc->strength = 0;
		break;

	default:
		FUNC1(1, "Invalid NAND_ECC_MODE %d\n", ecc->mode);
		ret = -EINVAL;
		goto err_nand_manuf_cleanup;
	}

	if (ecc->correct || ecc->calculate) {
		ecc->calc_buf = FUNC4(mtd->oobsize, GFP_KERNEL);
		ecc->code_buf = FUNC4(mtd->oobsize, GFP_KERNEL);
		if (!ecc->calc_buf || !ecc->code_buf) {
			ret = -ENOMEM;
			goto err_nand_manuf_cleanup;
		}
	}

	/* For many systems, the standard OOB write also works for raw */
	if (!ecc->read_oob_raw)
		ecc->read_oob_raw = ecc->read_oob;
	if (!ecc->write_oob_raw)
		ecc->write_oob_raw = ecc->write_oob;

	/* propagate ecc info to mtd_info */
	mtd->ecc_strength = ecc->strength;
	mtd->ecc_step_size = ecc->size;

	/*
	 * Set the number of read / write steps for one page depending on ECC
	 * mode.
	 */
	ecc->steps = mtd->writesize / ecc->size;
	if (ecc->steps * ecc->size != mtd->writesize) {
		FUNC1(1, "Invalid ECC parameters\n");
		ret = -EINVAL;
		goto err_nand_manuf_cleanup;
	}
	ecc->total = ecc->steps * ecc->bytes;
	if (ecc->total > mtd->oobsize) {
		FUNC1(1, "Total number of ECC bytes exceeded oobsize\n");
		ret = -EINVAL;
		goto err_nand_manuf_cleanup;
	}

	/*
	 * The number of bytes available for a client to place data into
	 * the out of band area.
	 */
	ret = FUNC5(mtd);
	if (ret < 0)
		ret = 0;

	mtd->oobavail = ret;

	/* ECC sanity check: warn if it's too weak */
	if (!FUNC9(chip))
		FUNC21("WARNING: %s: the ECC used on your system is too weak compared to the one required by the NAND chip\n",
			mtd->name);

	/* Allow subpage writes up to ecc.steps. Not possible for MLC flash */
	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) && FUNC11(chip)) {
		switch (ecc->steps) {
		case 2:
			mtd->subpage_sft = 1;
			break;
		case 4:
		case 8:
		case 16:
			mtd->subpage_sft = 2;
			break;
		}
	}
	chip->subpagesize = mtd->writesize >> mtd->subpage_sft;

	/* Invalidate the pagebuffer reference */
	chip->pagecache.page = -1;

	/* Large page NAND with SOFT_ECC should support subpage reads */
	switch (ecc->mode) {
	case NAND_ECC_SOFT:
		if (chip->page_shift > 9)
			chip->options |= NAND_SUBPAGE_READ;
		break;

	default:
		break;
	}

	ret = FUNC19(&chip->base, &rawnand_ops, mtd->owner);
	if (ret)
		goto err_nand_manuf_cleanup;

	/* Adjust the MTD_CAP_ flags when NAND_ROM is set. */
	if (chip->options & NAND_ROM)
		mtd->flags = MTD_CAP_ROM;

	/* Fill in remaining MTD driver data */
	mtd->_erase = nand_erase;
	mtd->_point = NULL;
	mtd->_unpoint = NULL;
	mtd->_panic_write = panic_nand_write;
	mtd->_read_oob = nand_read_oob;
	mtd->_write_oob = nand_write_oob;
	mtd->_sync = nand_sync;
	mtd->_lock = NULL;
	mtd->_unlock = NULL;
	mtd->_suspend = nand_suspend;
	mtd->_resume = nand_resume;
	mtd->_reboot = nand_shutdown;
	mtd->_block_isreserved = nand_block_isreserved;
	mtd->_block_isbad = nand_block_isbad;
	mtd->_block_markbad = nand_block_markbad;
	mtd->_max_bad_blocks = nanddev_mtd_max_bad_blocks;

	/*
	 * Initialize bitflip_threshold to its default prior scan_bbt() call.
	 * scan_bbt() might invoke mtd_read(), thus bitflip_threshold must be
	 * properly set.
	 */
	if (!mtd->bitflip_threshold)
		mtd->bitflip_threshold = FUNC0(mtd->ecc_strength * 3, 4);

	/* Initialize the ->data_interface field. */
	ret = FUNC10(chip);
	if (ret)
		goto err_nanddev_cleanup;

	/* Enter fastest possible mode on all dies. */
	for (i = 0; i < FUNC20(&chip->base); i++) {
		ret = FUNC16(chip, i);
		if (ret)
			goto err_nanddev_cleanup;
	}

	/* Check, if we should skip the bad block table scan */
	if (chip->options & NAND_SKIP_BBTSCAN)
		return 0;

	/* Build bad block table */
	ret = FUNC7(chip);
	if (ret)
		goto err_nanddev_cleanup;

	return 0;


err_nanddev_cleanup:
	FUNC18(&chip->base);

err_nand_manuf_cleanup:
	FUNC12(chip);

err_free_buf:
	FUNC3(chip->data_buf);
	FUNC3(ecc->code_buf);
	FUNC3(ecc->calc_buf);

	return ret;
}