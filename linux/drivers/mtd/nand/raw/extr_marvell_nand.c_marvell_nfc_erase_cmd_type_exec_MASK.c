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
struct marvell_nfc_op {int /*<<< orphan*/  rdy_delay_ns; int /*<<< orphan*/  rdy_timeout_ms; int /*<<< orphan*/  cle_ale_delay_ns; int /*<<< orphan*/ * ndcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_ERASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ; 
 int FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,struct marvell_nfc_op*) ; 
 int FUNC5 (struct nand_chip*) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip,
					   const struct nand_subop *subop)
{
	struct marvell_nfc_op nfc_op;
	int ret;

	FUNC2(chip, subop, &nfc_op);
	nfc_op.ndcb[0] |= FUNC0(TYPE_ERASE);

	ret = FUNC3(chip);
	if (ret)
		return ret;

	FUNC4(chip, &nfc_op);
	ret = FUNC5(chip);
	if (ret)
		return ret;

	FUNC1(nfc_op.cle_ale_delay_ns);

	ret = FUNC6(chip, nfc_op.rdy_timeout_ms);
	if (ret)
		return ret;

	FUNC1(nfc_op.rdy_delay_ns);

	return 0;
}