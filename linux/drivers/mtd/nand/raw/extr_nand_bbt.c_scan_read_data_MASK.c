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
struct nand_chip {int dummy; } ;
struct nand_bbt_descr {size_t len; int options; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int NAND_BBT_VERSION ; 
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *this, uint8_t *buf, loff_t offs,
			  struct nand_bbt_descr *td)
{
	struct mtd_info *mtd = FUNC1(this);
	size_t retlen;
	size_t len;

	len = td->len;
	if (td->options & NAND_BBT_VERSION)
		len++;

	return FUNC0(mtd, offs, len, &retlen, buf);
}