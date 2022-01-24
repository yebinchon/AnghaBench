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
typedef  void* uint8_t ;
struct nand_chip {int page_shift; } ;
struct nand_bbt_descr {int options; void** version; scalar_t__* pages; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
typedef  int loff_t ;

/* Variables and functions */
 int NAND_BBT_VERSION ; 
 size_t FUNC0 (struct nand_chip*,struct nand_bbt_descr*) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,void**,int,int /*<<< orphan*/ ,struct nand_bbt_descr*) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *this, uint8_t *buf,
			  struct nand_bbt_descr *td, struct nand_bbt_descr *md)
{
	struct mtd_info *mtd = FUNC1(this);

	/* Read the primary version, if available */
	if (td->options & NAND_BBT_VERSION) {
		FUNC3(this, buf, (loff_t)td->pages[0] << this->page_shift,
			  mtd->writesize, td);
		td->version[0] = buf[FUNC0(this, td)];
		FUNC2("Bad block table at page %d, version 0x%02X\n",
			 td->pages[0], td->version[0]);
	}

	/* Read the mirror version, if available */
	if (md && (md->options & NAND_BBT_VERSION)) {
		FUNC3(this, buf, (loff_t)md->pages[0] << this->page_shift,
			  mtd->writesize, md);
		md->version[0] = buf[FUNC0(this, md)];
		FUNC2("Bad block table at page %d, version 0x%02X\n",
			 md->pages[0], md->version[0]);
	}
}