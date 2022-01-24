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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct bch_geometry {int gf_len; int ecc_strength; int block_mark_byte_offset; int metadata_size; int /*<<< orphan*/  ecc_chunk_size; } ;
struct gpmi_nand_data {int bch_flashlayout0; int bch_flashlayout1; int bch; int /*<<< orphan*/  dev; scalar_t__ swap_block_mark; struct bch_geometry bch_geometry; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct gpmi_nand_data*) ; 
 int FUNC1 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC2 (int,struct gpmi_nand_data*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct gpmi_nand_data*) ; 
 int FUNC6 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC7 (int,struct gpmi_nand_data*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int,int,int,...) ; 
 unsigned int FUNC10 (struct nand_chip*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC11 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct gpmi_nand_data* FUNC12 (struct nand_chip*) ; 
 int FUNC13 (struct nand_chip*,int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(struct nand_chip *chip, uint32_t offs,
				 uint32_t len, uint8_t *buf, int page)
{
	struct gpmi_nand_data *this = FUNC12(chip);
	struct bch_geometry *geo = &this->bch_geometry;
	int size = chip->ecc.size; /* ECC chunk size */
	int meta, n, page_size;
	unsigned int max_bitflips;
	unsigned int ecc_strength;
	int first, last, marker_pos;
	int ecc_parity_size;
	int col = 0;
	int ret;

	/* The size of ECC parity */
	ecc_parity_size = geo->gf_len * geo->ecc_strength / 8;

	/* Align it with the chunk size */
	first = offs / size;
	last = (offs + len - 1) / size;

	if (this->swap_block_mark) {
		/*
		 * Find the chunk which contains the Block Marker.
		 * If this chunk is in the range of [first, last],
		 * we have to read out the whole page.
		 * Why? since we had swapped the data at the position of Block
		 * Marker to the metadata which is bound with the chunk 0.
		 */
		marker_pos = geo->block_mark_byte_offset / size;
		if (last >= marker_pos && first <= marker_pos) {
			FUNC9(this->dev,
				"page:%d, first:%d, last:%d, marker at:%d\n",
				page, first, last, marker_pos);
			return FUNC11(chip, buf, 0, page);
		}
	}

	meta = geo->metadata_size;
	if (first) {
		col = meta + (size + ecc_parity_size) * first;
		meta = 0;
		buf = buf + first * size;
	}

	ecc_parity_size = geo->gf_len * geo->ecc_strength / 8;

	n = last - first + 1;
	page_size = meta + (size + ecc_parity_size) * n;
	ecc_strength = geo->ecc_strength >> 1;

	this->bch_flashlayout0 = FUNC4(n - 1) |
		FUNC3(meta) |
		FUNC1(ecc_strength, this) |
		FUNC2(geo->gf_len, this) |
		FUNC0(geo->ecc_chunk_size, this);

	this->bch_flashlayout1 = FUNC8(page_size) |
		FUNC6(ecc_strength, this) |
		FUNC7(geo->gf_len, this) |
		FUNC5(geo->ecc_chunk_size, this);

	this->bch = true;

	ret = FUNC13(chip, page, col, buf, page_size);
	if (ret)
		return ret;

	FUNC9(this->dev, "page:%d(%d:%d)%d, chunk:(%d:%d), BCH PG size:%d\n",
		page, offs, len, col, first, n, page_size);

	max_bitflips = FUNC10(chip, buf, first, last, meta);

	return max_bitflips;
}