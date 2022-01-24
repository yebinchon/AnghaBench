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
struct nand_chip {int /*<<< orphan*/  const* oob_poi; int /*<<< orphan*/  cur_cs; } ;
struct marvell_hw_ecc_layout {int data_bytes; int spare_bytes; int ecc_bytes; int full_chunk_cnt; int last_spare_bytes; int nchunks; int last_data_bytes; int last_ecc_bytes; } ;
struct TYPE_2__ {struct marvell_hw_ecc_layout* layout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int /*<<< orphan*/  const*,int,int) ; 
 TYPE_1__* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip,
						 const u8 *buf,
						 int oob_required, int page)
{
	const struct marvell_hw_ecc_layout *lt = FUNC6(chip)->layout;
	int full_chunk_size = lt->data_bytes + lt->spare_bytes + lt->ecc_bytes;
	int data_len = lt->data_bytes;
	int spare_len = lt->spare_bytes;
	int ecc_len = lt->ecc_bytes;
	int spare_offset = 0;
	int ecc_offset = (lt->full_chunk_cnt * lt->spare_bytes) +
		lt->last_spare_bytes;
	int chunk;

	FUNC1(chip, chip->cur_cs);

	FUNC3(chip, page, 0, NULL, 0);

	for (chunk = 0; chunk < lt->nchunks; chunk++) {
		if (chunk >= lt->full_chunk_cnt) {
			data_len = lt->last_data_bytes;
			spare_len = lt->last_spare_bytes;
			ecc_len = lt->last_ecc_bytes;
		}

		/* Point to the column of the next chunk */
		FUNC2(chip, chunk * full_chunk_size,
					    NULL, 0, false);

		/* Write the data */
		FUNC5(chip, buf + (chunk * lt->data_bytes),
				   data_len, false);

		if (!oob_required)
			continue;

		/* Write the spare bytes */
		if (spare_len)
			FUNC5(chip, chip->oob_poi + spare_offset,
					   spare_len, false);

		/* Write the ECC bytes */
		if (ecc_len)
			FUNC5(chip, chip->oob_poi + ecc_offset,
					   ecc_len, false);

		spare_offset += spare_len;
		ecc_offset += FUNC0(ecc_len, 32);
	}

	return FUNC4(chip);
}