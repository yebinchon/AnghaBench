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
struct spi_nor {scalar_t__ program_opcode; scalar_t__ sst_write_second; int /*<<< orphan*/  write_proto; int /*<<< orphan*/  addr_width; } ;
struct TYPE_6__ {scalar_t__ nbytes; int /*<<< orphan*/  buswidth; } ;
struct TYPE_5__ {int /*<<< orphan*/  buswidth; } ;
struct TYPE_4__ {int /*<<< orphan*/  buswidth; } ;
struct spi_mem_op {TYPE_3__ addr; TYPE_2__ data; TYPE_1__ cmd; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ SPINOR_OP_AAI_WP ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_nor*,struct spi_mem_op*) ; 

__attribute__((used)) static ssize_t FUNC8(struct spi_nor *nor, loff_t to,
					 size_t len, const u8 *buf)
{
	struct spi_mem_op op =
		FUNC0(FUNC2(nor->program_opcode, 1),
			   FUNC1(nor->addr_width, to, 1),
			   SPI_MEM_OP_NO_DUMMY,
			   FUNC3(len, buf, 1));

	op.cmd.buswidth = FUNC6(nor->write_proto);
	op.addr.buswidth = FUNC4(nor->write_proto);
	op.data.buswidth = FUNC5(nor->write_proto);

	if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
		op.addr.nbytes = 0;

	return FUNC7(nor, &op);
}