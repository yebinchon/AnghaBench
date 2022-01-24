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
struct spi_nor_pp_command {int /*<<< orphan*/  proto; int /*<<< orphan*/  opcode; } ;
struct spi_nor {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  buswidth; } ;
struct TYPE_4__ {int /*<<< orphan*/  buswidth; } ;
struct TYPE_6__ {int /*<<< orphan*/  buswidth; } ;
struct spi_mem_op {TYPE_2__ data; TYPE_1__ addr; TYPE_3__ cmd; } ;

/* Variables and functions */
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct spi_nor*,struct spi_mem_op*) ; 

__attribute__((used)) static int FUNC8(struct spi_nor *nor,
				   const struct spi_nor_pp_command *pp)
{
	struct spi_mem_op op = FUNC0(FUNC2(pp->opcode, 1),
					  FUNC1(3, 0, 1),
					  SPI_MEM_OP_NO_DUMMY,
					  FUNC3(0, NULL, 1));

	op.cmd.buswidth = FUNC6(pp->proto);
	op.addr.buswidth = FUNC4(pp->proto);
	op.data.buswidth = FUNC5(pp->proto);

	return FUNC7(nor, &op);
}