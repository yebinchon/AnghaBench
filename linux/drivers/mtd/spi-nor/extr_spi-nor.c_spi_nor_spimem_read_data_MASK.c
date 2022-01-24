#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct spi_nor {int read_dummy; int /*<<< orphan*/  read_proto; int /*<<< orphan*/  addr_width; int /*<<< orphan*/  read_opcode; } ;
struct TYPE_8__ {int buswidth; int nbytes; } ;
struct TYPE_7__ {int /*<<< orphan*/  buswidth; } ;
struct TYPE_6__ {int buswidth; } ;
struct TYPE_5__ {int /*<<< orphan*/  buswidth; } ;
struct spi_mem_op {TYPE_4__ dummy; TYPE_3__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_nor*,struct spi_mem_op*) ; 

__attribute__((used)) static ssize_t FUNC9(struct spi_nor *nor, loff_t from,
					size_t len, u8 *buf)
{
	struct spi_mem_op op =
		FUNC0(FUNC2(nor->read_opcode, 1),
			   FUNC1(nor->addr_width, from, 1),
			   FUNC4(nor->read_dummy, 1),
			   FUNC3(len, buf, 1));

	/* get transfer protocols. */
	op.cmd.buswidth = FUNC7(nor->read_proto);
	op.addr.buswidth = FUNC5(nor->read_proto);
	op.dummy.buswidth = op.addr.buswidth;
	op.data.buswidth = FUNC6(nor->read_proto);

	/* convert the dummy cycles to the number of bytes */
	op.dummy.nbytes = (nor->read_dummy * op.dummy.buswidth) / 8;

	return FUNC8(nor, &op);
}