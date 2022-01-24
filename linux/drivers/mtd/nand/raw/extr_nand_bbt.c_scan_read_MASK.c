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
struct nand_bbt_descr {int options; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int NAND_BBT_NO_OOB ; 
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nand_bbt_descr*) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *this, uint8_t *buf, loff_t offs,
		     size_t len, struct nand_bbt_descr *td)
{
	if (td->options & NAND_BBT_NO_OOB)
		return FUNC0(this, buf, offs, td);
	else
		return FUNC1(this, buf, offs, len);
}