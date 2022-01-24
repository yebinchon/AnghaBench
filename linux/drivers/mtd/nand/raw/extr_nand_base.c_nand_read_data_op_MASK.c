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
typedef  int /*<<< orphan*/  u8 ;
struct nand_operation {int dummy; } ;
struct TYPE_4__ {int force_8bit; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct nand_op_instr {TYPE_2__ ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* read_buf ) (struct nand_chip*,void*,unsigned int) ;int /*<<< orphan*/  (* read_byte ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_3__ legacy; int /*<<< orphan*/  cur_cs; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (unsigned int,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,struct nand_operation*) ; 
 scalar_t__ FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,void*,unsigned int) ; 

int FUNC6(struct nand_chip *chip, void *buf, unsigned int len,
		      bool force_8bit)
{
	if (!len || !buf)
		return -EINVAL;

	if (FUNC3(chip)) {
		struct nand_op_instr instrs[] = {
			FUNC1(len, buf, 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);

		instrs[0].ctx.data.force_8bit = force_8bit;

		return FUNC2(chip, &op);
	}

	if (force_8bit) {
		u8 *p = buf;
		unsigned int i;

		for (i = 0; i < len; i++)
			p[i] = chip->legacy.read_byte(chip);
	} else {
		chip->legacy.read_buf(chip, buf, len);
	}

	return 0;
}