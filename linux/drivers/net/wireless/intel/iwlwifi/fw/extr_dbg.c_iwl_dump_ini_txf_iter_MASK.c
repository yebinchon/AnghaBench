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
typedef  int u32 ;
struct iwl_txf_iter_data {int fifo; int fifo_size; } ;
struct TYPE_4__ {struct iwl_txf_iter_data txf_iter_data; } ;
struct iwl_fw_runtime {int /*<<< orphan*/  trans; TYPE_1__ dump; } ;
struct TYPE_6__ {scalar_t__ header_only; void* num_of_registers; } ;
struct iwl_fw_ini_region_cfg {TYPE_3__ fifos; void** start_addr; void* offset; } ;
struct iwl_fw_ini_error_dump_register {void* data; void* addr; } ;
struct TYPE_5__ {void* num_of_registers; void* fifo_num; } ;
struct iwl_fw_ini_error_dump_range {void* range_data_size; TYPE_2__ fifo_hdr; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int TXF_LARC_NUM ; 
 int TXF_READ_MODIFY_ADDR ; 
 int TXF_READ_MODIFY_DATA ; 
 int TXF_WR_PTR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct iwl_fw_runtime *fwrt,
				 struct iwl_fw_ini_region_cfg *reg,
				 void *range_ptr, int idx)
{
	struct iwl_fw_ini_error_dump_range *range = range_ptr;
	struct iwl_txf_iter_data *iter = &fwrt->dump.txf_iter_data;
	struct iwl_fw_ini_error_dump_register *reg_dump = (void *)range->data;
	u32 offs = FUNC6(reg->offset), addr;
	u32 registers_size =
		FUNC6(reg->fifos.num_of_registers) * sizeof(*reg_dump);
	__le32 *data;
	unsigned long flags;
	int i;

	if (!FUNC1(fwrt, reg, idx))
		return -EIO;

	if (!FUNC3(fwrt->trans, &flags))
		return -EBUSY;

	range->fifo_hdr.fifo_num = FUNC0(iter->fifo);
	range->fifo_hdr.num_of_registers = reg->fifos.num_of_registers;
	range->range_data_size = FUNC0(iter->fifo_size + registers_size);

	FUNC5(fwrt->trans, TXF_LARC_NUM + offs, iter->fifo);

	/*
	 * read txf registers. for each register, write to the dump the
	 * register address and its value
	 */
	for (i = 0; i < FUNC6(reg->fifos.num_of_registers); i++) {
		addr = FUNC6(reg->start_addr[i]) + offs;

		reg_dump->addr = FUNC0(addr);
		reg_dump->data = FUNC0(FUNC2(fwrt->trans,
								   addr));

		reg_dump++;
	}

	if (reg->fifos.header_only) {
		range->range_data_size = FUNC0(registers_size);
		goto out;
	}

	/* Set the TXF_READ_MODIFY_ADDR to TXF_WR_PTR */
	FUNC5(fwrt->trans, TXF_READ_MODIFY_ADDR + offs,
			       TXF_WR_PTR + offs);

	/* Dummy-read to advance the read pointer to the head */
	FUNC2(fwrt->trans, TXF_READ_MODIFY_DATA + offs);

	/* Read FIFO */
	addr = TXF_READ_MODIFY_DATA + offs;
	data = (void *)reg_dump;
	for (i = 0; i < iter->fifo_size; i += sizeof(*data))
		*data++ = FUNC0(FUNC2(fwrt->trans, addr));

out:
	FUNC4(fwrt->trans, &flags);

	return sizeof(*range) + FUNC6(range->range_data_size);
}