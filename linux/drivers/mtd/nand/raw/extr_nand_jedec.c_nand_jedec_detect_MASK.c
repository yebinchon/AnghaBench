#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_memory_organization {int pagesize; int pages_per_eraseblock; int oobsize; int planes_per_lun; int eraseblocks_per_lun; int /*<<< orphan*/  bits_per_cell; int /*<<< orphan*/  luns_per_target; } ;
struct nand_jedec_params {int multi_plane_addr; struct jedec_ecc_info* ecc_info; int /*<<< orphan*/  features; int /*<<< orphan*/  bits_per_cell; int /*<<< orphan*/  blocks_per_lun; int /*<<< orphan*/  lun_count; int /*<<< orphan*/  spare_bytes_per_page; int /*<<< orphan*/  pages_per_block; int /*<<< orphan*/  byte_per_page; int /*<<< orphan*/  model; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  revision; int /*<<< orphan*/  crc; } ;
struct TYPE_5__ {int step_size; int /*<<< orphan*/  strength; } ;
struct TYPE_6__ {TYPE_2__ eccreq; } ;
struct TYPE_4__ {int /*<<< orphan*/  model; } ;
struct nand_chip {TYPE_3__ base; int /*<<< orphan*/  options; TYPE_1__ parameters; } ;
struct mtd_info {int writesize; int erasesize; int oobsize; } ;
struct jedec_ecc_info {int codeword_size; int /*<<< orphan*/  ecc_bits; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JEDEC_FEATURE_16_BIT_BUS ; 
 int /*<<< orphan*/  NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  ONFI_CRC_BASE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_jedec_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nand_jedec_params* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nand_chip*,struct nand_jedec_params*,int,int) ; 
 int FUNC7 (struct nand_chip*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nand_chip*,int,char*,int) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 struct nand_memory_organization* FUNC10 (TYPE_3__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 

int FUNC17(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC9(chip);
	struct nand_memory_organization *memorg;
	struct nand_jedec_params *p;
	struct jedec_ecc_info *ecc;
	int jedec_version = 0;
	char id[5];
	int i, val, ret;

	memorg = FUNC10(&chip->base);

	/* Try JEDEC for unknown chip or LP */
	ret = FUNC8(chip, 0x40, id, sizeof(id));
	if (ret || FUNC16(id, "JEDEC", sizeof(id)))
		return 0;

	/* JEDEC chip: allocate a buffer to hold its parameter page */
	p = FUNC3(sizeof(*p), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	ret = FUNC7(chip, 0x40, NULL, 0);
	if (ret) {
		ret = 0;
		goto free_jedec_param_page;
	}

	for (i = 0; i < 3; i++) {
		ret = FUNC6(chip, p, sizeof(*p), true);
		if (ret) {
			ret = 0;
			goto free_jedec_param_page;
		}

		if (FUNC11(ONFI_CRC_BASE, (uint8_t *)p, 510) ==
				FUNC4(p->crc))
			break;
	}

	if (i == 3) {
		FUNC12("Could not find valid JEDEC parameter page; aborting\n");
		goto free_jedec_param_page;
	}

	/* Check version */
	val = FUNC4(p->revision);
	if (val & (1 << 2))
		jedec_version = 10;
	else if (val & (1 << 1))
		jedec_version = 1; /* vendor specific version */

	if (!jedec_version) {
		FUNC13("unsupported JEDEC version: %d\n", val);
		goto free_jedec_param_page;
	}

	FUNC15(p->manufacturer, sizeof(p->manufacturer));
	FUNC15(p->model, sizeof(p->model));
	chip->parameters.model = FUNC2(p->model, GFP_KERNEL);
	if (!chip->parameters.model) {
		ret = -ENOMEM;
		goto free_jedec_param_page;
	}

	memorg->pagesize = FUNC5(p->byte_per_page);
	mtd->writesize = memorg->pagesize;

	/* Please reference to the comment for nand_flash_detect_onfi. */
	memorg->pages_per_eraseblock =
			1 << (FUNC0(FUNC5(p->pages_per_block)) - 1);
	mtd->erasesize = memorg->pages_per_eraseblock * memorg->pagesize;

	memorg->oobsize = FUNC4(p->spare_bytes_per_page);
	mtd->oobsize = memorg->oobsize;

	memorg->luns_per_target = p->lun_count;
	memorg->planes_per_lun = 1 << p->multi_plane_addr;

	/* Please reference to the comment for nand_flash_detect_onfi. */
	memorg->eraseblocks_per_lun =
		1 << (FUNC0(FUNC5(p->blocks_per_lun)) - 1);
	memorg->bits_per_cell = p->bits_per_cell;

	if (FUNC4(p->features) & JEDEC_FEATURE_16_BIT_BUS)
		chip->options |= NAND_BUSWIDTH_16;

	/* ECC info */
	ecc = &p->ecc_info[0];

	if (ecc->codeword_size >= 9) {
		chip->base.eccreq.strength = ecc->ecc_bits;
		chip->base.eccreq.step_size = 1 << ecc->codeword_size;
	} else {
		FUNC14("Invalid codeword size\n");
	}

	ret = 1;

free_jedec_param_page:
	FUNC1(p);
	return ret;
}