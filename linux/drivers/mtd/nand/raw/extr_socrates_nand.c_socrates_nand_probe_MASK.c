#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int chip_delay; int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  cmd_ctrl; } ;
struct TYPE_8__ {int /*<<< orphan*/  algo; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_3__ legacy; TYPE_2__ ecc; } ;
struct socrates_nand_host {int /*<<< orphan*/ * io_base; TYPE_4__* dev; struct nand_chip nand_chip; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {TYPE_4__* parent; } ;
struct mtd_info {char* name; TYPE_1__ dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAND_ECC_HAMMING ; 
 int /*<<< orphan*/  NAND_ECC_SOFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,struct socrates_nand_host*) ; 
 struct socrates_nand_host* FUNC2 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*) ; 
 int FUNC6 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,struct socrates_nand_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socrates_nand_cmd_ctrl ; 
 int /*<<< orphan*/  socrates_nand_device_ready ; 
 int /*<<< orphan*/  socrates_nand_read_buf ; 
 int /*<<< orphan*/  socrates_nand_read_byte ; 
 int /*<<< orphan*/  socrates_nand_write_buf ; 

__attribute__((used)) static int FUNC11(struct platform_device *ofdev)
{
	struct socrates_nand_host *host;
	struct mtd_info *mtd;
	struct nand_chip *nand_chip;
	int res;

	/* Allocate memory for the device structure (and zero it) */
	host = FUNC2(&ofdev->dev, sizeof(*host), GFP_KERNEL);
	if (!host)
		return -ENOMEM;

	host->io_base = FUNC10(ofdev->dev.of_node, 0);
	if (host->io_base == NULL) {
		FUNC0(&ofdev->dev, "ioremap failed\n");
		return -EIO;
	}

	nand_chip = &host->nand_chip;
	mtd = FUNC9(nand_chip);
	host->dev = &ofdev->dev;

	/* link the private data structures */
	FUNC7(nand_chip, host);
	FUNC8(nand_chip, ofdev->dev.of_node);
	mtd->name = "socrates_nand";
	mtd->dev.parent = &ofdev->dev;

	nand_chip->legacy.cmd_ctrl = socrates_nand_cmd_ctrl;
	nand_chip->legacy.read_byte = socrates_nand_read_byte;
	nand_chip->legacy.write_buf = socrates_nand_write_buf;
	nand_chip->legacy.read_buf = socrates_nand_read_buf;
	nand_chip->legacy.dev_ready = socrates_nand_device_ready;

	nand_chip->ecc.mode = NAND_ECC_SOFT;	/* enable ECC */
	nand_chip->ecc.algo = NAND_ECC_HAMMING;

	/* TODO: I have no idea what real delay is. */
	nand_chip->legacy.chip_delay = 20;	/* 20us command delay time */

	FUNC1(&ofdev->dev, host);

	res = FUNC6(nand_chip, 1);
	if (res)
		goto out;

	res = FUNC4(mtd, NULL, 0);
	if (!res)
		return res;

	FUNC5(nand_chip);

out:
	FUNC3(host->io_base);
	return res;
}