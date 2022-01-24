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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int /*<<< orphan*/  const* oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
struct bch_geometry {int /*<<< orphan*/  page_size; int /*<<< orphan*/  auxiliary_size; } ;
struct gpmi_nand_data {int bch; int /*<<< orphan*/ * auxiliary_virt; int /*<<< orphan*/ * data_buffer_dma; scalar_t__ swap_block_mark; int /*<<< orphan*/  dev; struct bch_geometry bch_geometry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpmi_nand_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct gpmi_nand_data* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, const uint8_t *buf,
			       int oob_required, int page)
{
	struct mtd_info *mtd = FUNC6(chip);
	struct gpmi_nand_data *this = FUNC4(chip);
	struct bch_geometry *nfc_geo = &this->bch_geometry;
	int ret;

	FUNC1(this->dev, "ecc write page.\n");

	FUNC2(this);
	this->bch = true;

	FUNC3(this->auxiliary_virt, chip->oob_poi, nfc_geo->auxiliary_size);

	if (this->swap_block_mark) {
		/*
		 * When doing bad block marker swapping we must always copy the
		 * input buffer as we can't modify the const buffer.
		 */
		FUNC3(this->data_buffer_dma, buf, mtd->writesize);
		buf = this->data_buffer_dma;
		FUNC0(this, this->data_buffer_dma,
				    this->auxiliary_virt);
	}

	ret = FUNC5(chip, page, 0, buf, nfc_geo->page_size);

	return ret;
}