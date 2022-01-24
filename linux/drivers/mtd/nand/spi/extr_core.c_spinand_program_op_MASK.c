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
struct spinand_device {int /*<<< orphan*/  spimem; } ;
struct spi_mem_op {int dummy; } ;
struct nand_page_io_req {int /*<<< orphan*/  pos; } ;
struct nand_device {int dummy; } ;

/* Variables and functions */
 struct spi_mem_op FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct nand_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 
 struct nand_device* FUNC3 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC4(struct spinand_device *spinand,
			      const struct nand_page_io_req *req)
{
	struct nand_device *nand = FUNC3(spinand);
	unsigned int row = FUNC1(nand, &req->pos);
	struct spi_mem_op op = FUNC0(row);

	return FUNC2(spinand->spimem, &op);
}