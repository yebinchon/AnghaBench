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
struct onenand_chip {int (* read_word ) (scalar_t__) ;scalar_t__ base; int /*<<< orphan*/  (* write_word ) (int,scalar_t__) ;int /*<<< orphan*/  (* wait ) (struct mtd_info*,int /*<<< orphan*/ ) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FL_RESETING ; 
 scalar_t__ ONENAND_BOOTRAM ; 
 int ONENAND_CMD_READID ; 
 int ONENAND_CMD_RESET ; 
 scalar_t__ ONENAND_REG_DEVICE_ID ; 
 scalar_t__ ONENAND_REG_MANUFACTURER_ID ; 
 scalar_t__ ONENAND_REG_SYS_CFG1 ; 
 int ONENAND_SYS_CFG1_SYNC_READ ; 
 int ONENAND_SYS_CFG1_SYNC_WRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct mtd_info *mtd)
{
	struct onenand_chip *this = mtd->priv;
	int bram_maf_id, bram_dev_id, maf_id, dev_id;
	int syscfg;

	/* Save system configuration 1 */
	syscfg = this->read_word(this->base + ONENAND_REG_SYS_CFG1);
	/* Clear Sync. Burst Read mode to read BootRAM */
	this->write_word((syscfg & ~ONENAND_SYS_CFG1_SYNC_READ & ~ONENAND_SYS_CFG1_SYNC_WRITE), this->base + ONENAND_REG_SYS_CFG1);

	/* Send the command for reading device ID from BootRAM */
	this->write_word(ONENAND_CMD_READID, this->base + ONENAND_BOOTRAM);

	/* Read manufacturer and device IDs from BootRAM */
	bram_maf_id = this->read_word(this->base + ONENAND_BOOTRAM + 0x0);
	bram_dev_id = this->read_word(this->base + ONENAND_BOOTRAM + 0x2);

	/* Reset OneNAND to read default register values */
	this->write_word(ONENAND_CMD_RESET, this->base + ONENAND_BOOTRAM);
	/* Wait reset */
	this->wait(mtd, FL_RESETING);

	/* Restore system configuration 1 */
	this->write_word(syscfg, this->base + ONENAND_REG_SYS_CFG1);

	/* Check manufacturer ID */
	if (FUNC0(bram_maf_id))
		return -ENXIO;

	/* Read manufacturer and device IDs from Register */
	maf_id = this->read_word(this->base + ONENAND_REG_MANUFACTURER_ID);
	dev_id = this->read_word(this->base + ONENAND_REG_DEVICE_ID);

	/* Check OneNAND device */
	if (maf_id != bram_maf_id || dev_id != bram_dev_id)
		return -ENXIO;

	return 0;
}