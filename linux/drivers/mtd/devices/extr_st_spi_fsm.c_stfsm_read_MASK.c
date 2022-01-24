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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct stfsm_seq {int seq_cfg; int addr1; int addr2; int /*<<< orphan*/  data_size; } ;
struct stfsm {int configuration; int /*<<< orphan*/  dev; struct stfsm_seq stfsm_seq_read; } ;

/* Variables and functions */
 int CFG_READ_TOGGLE_32BIT_ADDR ; 
 int FLASH_PAGESIZE_32 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC4 (struct stfsm*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*,struct stfsm_seq*) ; 
 int /*<<< orphan*/  FUNC6 (struct stfsm*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stfsm*) ; 

__attribute__((used)) static int FUNC8(struct stfsm *fsm, uint8_t *buf, uint32_t size,
		      uint32_t offset)
{
	struct stfsm_seq *seq = &fsm->stfsm_seq_read;
	uint32_t data_pads;
	uint32_t read_mask;
	uint32_t size_ub;
	uint32_t size_lb;
	uint32_t size_mop;
	uint32_t tmp[4];
	uint32_t page_buf[FLASH_PAGESIZE_32];
	uint8_t *p;

	FUNC1(fsm->dev, "reading %d bytes from 0x%08x\n", size, offset);

	/* Enter 32-bit address mode, if required */
	if (fsm->configuration & CFG_READ_TOGGLE_32BIT_ADDR)
		FUNC4(fsm, 1);

	/* Must read in multiples of 32 cycles (or 32*pads/8 Bytes) */
	data_pads = ((seq->seq_cfg >> 16) & 0x3) + 1;
	read_mask = (data_pads << 2) - 1;

	/* Handle non-aligned buf */
	p = ((uintptr_t)buf & 0x3) ? (uint8_t *)page_buf : buf;

	/* Handle non-aligned size */
	size_ub = (size + read_mask) & ~read_mask;
	size_lb = size & ~read_mask;
	size_mop = size & read_mask;

	seq->data_size = FUNC0(size_ub);
	seq->addr1 = (offset >> 16) & 0xffff;
	seq->addr2 = offset & 0xffff;

	FUNC5(fsm, seq);

	if (size_lb)
		FUNC6(fsm, (uint32_t *)p, size_lb);

	if (size_mop) {
		FUNC6(fsm, tmp, read_mask + 1);
		FUNC2(p + size_lb, &tmp, size_mop);
	}

	/* Handle non-aligned buf */
	if ((uintptr_t)buf & 0x3)
		FUNC2(buf, page_buf, size);

	/* Wait for sequence to finish */
	FUNC7(fsm);

	FUNC3(fsm);

	/* Exit 32-bit address mode, if required */
	if (fsm->configuration & CFG_READ_TOGGLE_32BIT_ADDR)
		FUNC4(fsm, 0);

	return 0;
}