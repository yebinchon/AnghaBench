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
typedef  int u32 ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  cur_cs; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; } ;
struct marvell_hw_ecc_layout {int data_bytes; int spare_bytes; int nchunks; int full_chunk_cnt; int last_data_bytes; int last_spare_bytes; int ecc_bytes; int last_ecc_bytes; int writesize; int strength; } ;
struct TYPE_2__ {struct marvell_hw_ecc_layout* layout; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (struct nand_chip*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int,int /*<<< orphan*/ *,int,int) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 TYPE_1__* FUNC10 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC11(struct nand_chip *chip,
					    u8 *buf, int oob_required,
					    int page)
{
	struct mtd_info *mtd = FUNC9(chip);
	const struct marvell_hw_ecc_layout *lt = FUNC10(chip)->layout;
	int data_len = lt->data_bytes, spare_len = lt->spare_bytes;
	u8 *data = buf, *spare = chip->oob_poi;
	int max_bitflips = 0;
	u32 failure_mask = 0;
	int chunk, ret;

	FUNC6(chip, chip->cur_cs);

	/*
	 * With BCH, OOB is not fully used (and thus not read entirely), not
	 * expected bytes could show up at the end of the OOB buffer if not
	 * explicitly erased.
	 */
	if (oob_required)
		FUNC7(chip->oob_poi, 0xFF, mtd->oobsize);

	FUNC3(chip);

	for (chunk = 0; chunk < lt->nchunks; chunk++) {
		/* Update length for the last chunk */
		if (chunk >= lt->full_chunk_cnt) {
			data_len = lt->last_data_bytes;
			spare_len = lt->last_spare_bytes;
		}

		/* Read the chunk and detect number of bitflips */
		FUNC4(chip, chunk, data, data_len,
						  spare, spare_len, page);
		ret = FUNC5(chip, &max_bitflips);
		if (ret)
			failure_mask |= FUNC0(chunk);

		data += data_len;
		spare += spare_len;
	}

	FUNC2(chip);

	if (!failure_mask)
		return max_bitflips;

	/*
	 * Please note that dumping the ECC bytes during a normal read with OOB
	 * area would add a significant overhead as ECC bytes are "consumed" by
	 * the controller in normal mode and must be re-read in raw mode. To
	 * avoid dropping the performances, we prefer not to include them. The
	 * user should re-read the page in raw mode if ECC bytes are required.
	 */

	/*
	 * In case there is any subpage read error reported by ->correct(), we
	 * usually re-read only ECC bytes in raw mode and check if the whole
	 * page is empty. In this case, it is normal that the ECC check failed
	 * and we just ignore the error.
	 *
	 * However, it has been empirically observed that for some layouts (e.g
	 * 2k page, 8b strength per 512B chunk), the controller tries to correct
	 * bits and may create itself bitflips in the erased area. To overcome
	 * this strange behavior, the whole page is re-read in raw mode, not
	 * only the ECC bytes.
	 */
	for (chunk = 0; chunk < lt->nchunks; chunk++) {
		int data_off_in_page, spare_off_in_page, ecc_off_in_page;
		int data_off, spare_off, ecc_off;
		int data_len, spare_len, ecc_len;

		/* No failure reported for this chunk, move to the next one */
		if (!(failure_mask & FUNC0(chunk)))
			continue;

		data_off_in_page = chunk * (lt->data_bytes + lt->spare_bytes +
					    lt->ecc_bytes);
		spare_off_in_page = data_off_in_page +
			(chunk < lt->full_chunk_cnt ? lt->data_bytes :
						      lt->last_data_bytes);
		ecc_off_in_page = spare_off_in_page +
			(chunk < lt->full_chunk_cnt ? lt->spare_bytes :
						      lt->last_spare_bytes);

		data_off = chunk * lt->data_bytes;
		spare_off = chunk * lt->spare_bytes;
		ecc_off = (lt->full_chunk_cnt * lt->spare_bytes) +
			  lt->last_spare_bytes +
			  (chunk * (lt->ecc_bytes + 2));

		data_len = chunk < lt->full_chunk_cnt ? lt->data_bytes :
							lt->last_data_bytes;
		spare_len = chunk < lt->full_chunk_cnt ? lt->spare_bytes :
							 lt->last_spare_bytes;
		ecc_len = chunk < lt->full_chunk_cnt ? lt->ecc_bytes :
						       lt->last_ecc_bytes;

		/*
		 * Only re-read the ECC bytes, unless we are using the 2k/8b
		 * layout which is buggy in the sense that the ECC engine will
		 * try to correct data bytes anyway, creating bitflips. In this
		 * case, re-read the entire page.
		 */
		if (lt->writesize == 2048 && lt->strength == 8) {
			FUNC8(chip, data_off_in_page,
						   buf + data_off, data_len,
						   false);
			FUNC8(chip, spare_off_in_page,
						   chip->oob_poi + spare_off, spare_len,
						   false);
		}

		FUNC8(chip, ecc_off_in_page,
					   chip->oob_poi + ecc_off, ecc_len,
					   false);

		/* Check the entire chunk (data + spare + ecc) for emptyness */
		FUNC1(chip, buf + data_off, data_len,
					      chip->oob_poi + spare_off, spare_len,
					      chip->oob_poi + ecc_off, ecc_len,
					      &max_bitflips);
	}

	return max_bitflips;
}