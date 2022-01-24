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
struct spinand_op_variants {unsigned int nops; struct spi_mem_op const* ops; } ;
struct spinand_device {int /*<<< orphan*/  spimem; } ;
struct TYPE_2__ {unsigned int nbytes; } ;
typedef  struct spi_mem_op {TYPE_1__ data; } const spi_mem_op ;
struct nand_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct nand_device*) ; 
 unsigned int FUNC1 (struct nand_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_mem_op const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct spi_mem_op const*) ; 
 struct nand_device* FUNC4 (struct spinand_device*) ; 

__attribute__((used)) static const struct spi_mem_op *
FUNC5(struct spinand_device *spinand,
			  const struct spinand_op_variants *variants)
{
	struct nand_device *nand = FUNC4(spinand);
	unsigned int i;

	for (i = 0; i < variants->nops; i++) {
		struct spi_mem_op op = variants->ops[i];
		unsigned int nbytes;
		int ret;

		nbytes = FUNC1(nand) +
			 FUNC0(nand);

		while (nbytes) {
			op.data.nbytes = nbytes;
			ret = FUNC2(spinand->spimem, &op);
			if (ret)
				break;

			if (!FUNC3(spinand->spimem, &op))
				break;

			nbytes -= op.data.nbytes;
		}

		if (!nbytes)
			return &variants->ops[i];
	}

	return NULL;
}