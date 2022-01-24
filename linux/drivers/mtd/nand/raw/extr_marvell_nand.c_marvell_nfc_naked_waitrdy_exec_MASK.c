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
struct nand_subop {int dummy; } ;
struct nand_chip {int dummy; } ;
struct marvell_nfc_op {int /*<<< orphan*/  rdy_delay_ns; int /*<<< orphan*/  rdy_timeout_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip,
					  const struct nand_subop *subop)
{
	struct marvell_nfc_op nfc_op;
	int ret;

	FUNC1(chip, subop, &nfc_op);

	ret = FUNC2(chip, nfc_op.rdy_timeout_ms);
	FUNC0(nfc_op.rdy_delay_ns);

	return ret;
}