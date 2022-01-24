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
struct nand_ecc_ctrl {int strength; int /*<<< orphan*/  read_subpage; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  write_oob_raw; int /*<<< orphan*/  read_oob_raw; int /*<<< orphan*/  write_page_raw; int /*<<< orphan*/  read_page_raw; int /*<<< orphan*/  write_oob; int /*<<< orphan*/  read_oob; int /*<<< orphan*/  write_page; int /*<<< orphan*/  read_page; } ;
struct nand_chip {int /*<<< orphan*/  options; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int dummy; } ;
struct bch_geometry {int ecc_strength; int gf_len; int /*<<< orphan*/  ecc_chunk_size; } ;
struct gpmi_nand_data {struct bch_geometry bch_geometry; struct nand_chip nand; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  NAND_ECC_HW ; 
 int /*<<< orphan*/  NAND_SUBPAGE_READ ; 
 int /*<<< orphan*/  gpmi_ecc_read_oob ; 
 int /*<<< orphan*/  gpmi_ecc_read_oob_raw ; 
 int /*<<< orphan*/  gpmi_ecc_read_page ; 
 int /*<<< orphan*/  gpmi_ecc_read_page_raw ; 
 int /*<<< orphan*/  gpmi_ecc_read_subpage ; 
 int /*<<< orphan*/  gpmi_ecc_write_oob ; 
 int /*<<< orphan*/  gpmi_ecc_write_oob_raw ; 
 int /*<<< orphan*/  gpmi_ecc_write_page ; 
 int /*<<< orphan*/  gpmi_ecc_write_page_raw ; 
 int /*<<< orphan*/  gpmi_ooblayout_ops ; 
 int FUNC1 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpmi_nand_data *this)
{
	struct nand_chip *chip = &this->nand;
	struct mtd_info *mtd = FUNC3(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	struct bch_geometry *bch_geo = &this->bch_geometry;
	int ret;

	/* Set up the medium geometry */
	ret = FUNC1(this);
	if (ret)
		return ret;

	/* Init the nand_ecc_ctrl{} */
	ecc->read_page	= gpmi_ecc_read_page;
	ecc->write_page	= gpmi_ecc_write_page;
	ecc->read_oob	= gpmi_ecc_read_oob;
	ecc->write_oob	= gpmi_ecc_write_oob;
	ecc->read_page_raw = gpmi_ecc_read_page_raw;
	ecc->write_page_raw = gpmi_ecc_write_page_raw;
	ecc->read_oob_raw = gpmi_ecc_read_oob_raw;
	ecc->write_oob_raw = gpmi_ecc_write_oob_raw;
	ecc->mode	= NAND_ECC_HW;
	ecc->size	= bch_geo->ecc_chunk_size;
	ecc->strength	= bch_geo->ecc_strength;
	FUNC2(mtd, &gpmi_ooblayout_ops);

	/*
	 * We only enable the subpage read when:
	 *  (1) the chip is imx6, and
	 *  (2) the size of the ECC parity is byte aligned.
	 */
	if (FUNC0(this) &&
		((bch_geo->gf_len * bch_geo->ecc_strength) % 8) == 0) {
		ecc->read_subpage = gpmi_ecc_read_subpage;
		chip->options |= NAND_SUBPAGE_READ;
	}

	return 0;
}