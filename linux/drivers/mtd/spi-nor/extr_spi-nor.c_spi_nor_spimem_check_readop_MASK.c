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
struct spi_nor_read_command {int num_mode_clocks; int num_wait_states; int /*<<< orphan*/  proto; int /*<<< orphan*/  opcode; } ;
struct spi_nor {int dummy; } ;
struct TYPE_8__ {int buswidth; int nbytes; } ;
struct TYPE_7__ {int buswidth; } ;
struct TYPE_6__ {int /*<<< orphan*/  buswidth; } ;
struct TYPE_5__ {int /*<<< orphan*/  buswidth; } ;
struct spi_mem_op {TYPE_4__ dummy; TYPE_3__ addr; TYPE_2__ data; TYPE_1__ cmd; } ;

/* Variables and functions */
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct spi_nor*,struct spi_mem_op*) ; 

__attribute__((used)) static int FUNC9(struct spi_nor *nor,
				       const struct spi_nor_read_command *read)
{
	struct spi_mem_op op = FUNC0(FUNC2(read->opcode, 1),
					  FUNC1(3, 0, 1),
					  FUNC4(0, 1),
					  FUNC3(0, NULL, 1));

	op.cmd.buswidth = FUNC7(read->proto);
	op.addr.buswidth = FUNC5(read->proto);
	op.data.buswidth = FUNC6(read->proto);
	op.dummy.buswidth = op.addr.buswidth;
	op.dummy.nbytes = (read->num_mode_clocks + read->num_wait_states) *
			  op.dummy.buswidth / 8;

	return FUNC8(nor, &op);
}