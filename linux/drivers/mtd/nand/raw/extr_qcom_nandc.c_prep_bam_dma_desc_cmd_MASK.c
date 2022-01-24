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
struct qcom_nand_controller {int /*<<< orphan*/  cmd_chan; struct bam_transaction* bam_txn; } ;
struct bam_transaction {size_t bam_ce_pos; size_t bam_ce_start; size_t cmd_sgl_pos; int /*<<< orphan*/ * cmd_sgl; struct bam_cmd_element* bam_ce; } ;
struct bam_cmd_element {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BAM_READ_COMMAND ; 
 int /*<<< orphan*/  BAM_WRITE_COMMAND ; 
 int DMA_PREP_CMD ; 
 int DMA_PREP_FENCE ; 
 unsigned int NAND_BAM_NEXT_SGL ; 
 unsigned int NAND_BAM_NWD ; 
 int /*<<< orphan*/  FUNC0 (struct bam_cmd_element*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bam_cmd_element*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*,int) ; 
 int FUNC3 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qcom_nand_controller*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bam_cmd_element*,int) ; 

__attribute__((used)) static int FUNC6(struct qcom_nand_controller *nandc, bool read,
				 int reg_off, const void *vaddr,
				 int size, unsigned int flags)
{
	int bam_ce_size;
	int i, ret;
	struct bam_cmd_element *bam_ce_buffer;
	struct bam_transaction *bam_txn = nandc->bam_txn;

	bam_ce_buffer = &bam_txn->bam_ce[bam_txn->bam_ce_pos];

	/* fill the command desc */
	for (i = 0; i < size; i++) {
		if (read)
			FUNC0(&bam_ce_buffer[i],
				    FUNC2(nandc, reg_off + 4 * i),
				    BAM_READ_COMMAND,
				    FUNC4(nandc,
						     (__le32 *)vaddr + i));
		else
			FUNC1(&bam_ce_buffer[i],
					 FUNC2(nandc, reg_off + 4 * i),
					 BAM_WRITE_COMMAND,
					 *((__le32 *)vaddr + i));
	}

	bam_txn->bam_ce_pos += size;

	/* use the separate sgl after this command */
	if (flags & NAND_BAM_NEXT_SGL) {
		bam_ce_buffer = &bam_txn->bam_ce[bam_txn->bam_ce_start];
		bam_ce_size = (bam_txn->bam_ce_pos -
				bam_txn->bam_ce_start) *
				sizeof(struct bam_cmd_element);
		FUNC5(&bam_txn->cmd_sgl[bam_txn->cmd_sgl_pos],
			   bam_ce_buffer, bam_ce_size);
		bam_txn->cmd_sgl_pos++;
		bam_txn->bam_ce_start = bam_txn->bam_ce_pos;

		if (flags & NAND_BAM_NWD) {
			ret = FUNC3(nandc, nandc->cmd_chan,
						     DMA_PREP_FENCE |
						     DMA_PREP_CMD);
			if (ret)
				return ret;
		}
	}

	return 0;
}