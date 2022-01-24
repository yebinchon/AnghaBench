#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nand_operation {scalar_t__ cs; } ;
struct nand_chip {TYPE_2__* controller; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* exec_op ) (struct nand_chip*,struct nand_operation const*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nand_chip*,struct nand_operation const*,int) ; 

__attribute__((used)) static inline int FUNC4(struct nand_chip *chip,
			       const struct nand_operation *op)
{
	if (!FUNC1(chip))
		return -ENOTSUPP;

	if (FUNC0(op->cs >= FUNC2(&chip->base)))
		return -EINVAL;

	return chip->controller->ops->exec_op(chip, op, false);
}