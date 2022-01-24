#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sunxi_nand_chip {TYPE_1__* sels; } ;
struct nand_operation {size_t cs; } ;
struct nand_op_parser {int dummy; } ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ rb; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,struct nand_op_parser const*,struct nand_operation const*,int) ; 
 struct nand_op_parser sunxi_nfc_norb_op_parser ; 
 struct nand_op_parser sunxi_nfc_op_parser ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,size_t) ; 
 struct sunxi_nand_chip* FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *nand,
			     const struct nand_operation *op, bool check_only)
{
	struct sunxi_nand_chip *sunxi_nand = FUNC2(nand);
	const struct nand_op_parser *parser;

	FUNC1(nand, op->cs);

	if (sunxi_nand->sels[op->cs].rb >= 0)
		parser = &sunxi_nfc_op_parser;
	else
		parser = &sunxi_nfc_norb_op_parser;

	return FUNC0(nand, parser, op, check_only);
}