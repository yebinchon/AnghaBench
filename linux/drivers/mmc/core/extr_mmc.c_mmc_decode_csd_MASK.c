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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_csd {int structure; int mmca_vsn; int taac_ns; int taac_clks; int max_dtr; int cmdclass; int capacity; int read_blkbits; int read_partial; int write_misalign; int read_misalign; int dsr_imp; int r2w_factor; int write_blkbits; int write_partial; unsigned int erase_size; } ;
struct mmc_card {int /*<<< orphan*/  host; int /*<<< orphan*/ * raw_csd; struct mmc_csd csd; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int* taac_exp ; 
 int* taac_mant ; 
 int* tran_exp ; 
 int* tran_mant ; 

__attribute__((used)) static int FUNC3(struct mmc_card *card)
{
	struct mmc_csd *csd = &card->csd;
	unsigned int e, m, a, b;
	u32 *resp = card->raw_csd;

	/*
	 * We only understand CSD structure v1.1 and v1.2.
	 * v1.2 has extra information in bits 15, 11 and 10.
	 * We also support eMMC v4.4 & v4.41.
	 */
	csd->structure = FUNC0(resp, 126, 2);
	if (csd->structure == 0) {
		FUNC2("%s: unrecognised CSD structure version %d\n",
			FUNC1(card->host), csd->structure);
		return -EINVAL;
	}

	csd->mmca_vsn	 = FUNC0(resp, 122, 4);
	m = FUNC0(resp, 115, 4);
	e = FUNC0(resp, 112, 3);
	csd->taac_ns	 = (taac_exp[e] * taac_mant[m] + 9) / 10;
	csd->taac_clks	 = FUNC0(resp, 104, 8) * 100;

	m = FUNC0(resp, 99, 4);
	e = FUNC0(resp, 96, 3);
	csd->max_dtr	  = tran_exp[e] * tran_mant[m];
	csd->cmdclass	  = FUNC0(resp, 84, 12);

	e = FUNC0(resp, 47, 3);
	m = FUNC0(resp, 62, 12);
	csd->capacity	  = (1 + m) << (e + 2);

	csd->read_blkbits = FUNC0(resp, 80, 4);
	csd->read_partial = FUNC0(resp, 79, 1);
	csd->write_misalign = FUNC0(resp, 78, 1);
	csd->read_misalign = FUNC0(resp, 77, 1);
	csd->dsr_imp = FUNC0(resp, 76, 1);
	csd->r2w_factor = FUNC0(resp, 26, 3);
	csd->write_blkbits = FUNC0(resp, 22, 4);
	csd->write_partial = FUNC0(resp, 21, 1);

	if (csd->write_blkbits >= 9) {
		a = FUNC0(resp, 42, 5);
		b = FUNC0(resp, 37, 5);
		csd->erase_size = (a + 1) * (b + 1);
		csd->erase_size <<= csd->write_blkbits - 9;
	}

	return 0;
}