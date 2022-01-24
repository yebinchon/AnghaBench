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
struct stfsm {int configuration; scalar_t__ fifo_dir_delay; scalar_t__ base; int /*<<< orphan*/  dev; struct stfsm_seq stfsm_seq_write; } ;

/* Variables and functions */
 int CFG_S25FL_CHECK_ERROR_FLAGS ; 
 int CFG_WRITE_TOGGLE_32BIT_ADDR ; 
 int FLASH_PAGESIZE_32 ; 
 scalar_t__ SPI_FAST_SEQ_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stfsm*,struct stfsm_seq*) ; 
 int /*<<< orphan*/  FUNC7 (struct stfsm*) ; 
 int FUNC8 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC9 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC10 (struct stfsm*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct stfsm *fsm, const uint8_t *buf,
		       uint32_t size, uint32_t offset)
{
	struct stfsm_seq *seq = &fsm->stfsm_seq_write;
	uint32_t data_pads;
	uint32_t write_mask;
	uint32_t size_ub;
	uint32_t size_lb;
	uint32_t size_mop;
	uint32_t tmp[4];
	uint32_t i;
	uint32_t page_buf[FLASH_PAGESIZE_32];
	uint8_t *t = (uint8_t *)&tmp;
	const uint8_t *p;
	int ret;

	FUNC1(fsm->dev, "writing %d bytes to 0x%08x\n", size, offset);

	/* Enter 32-bit address mode, if required */
	if (fsm->configuration & CFG_WRITE_TOGGLE_32BIT_ADDR)
		FUNC5(fsm, 1);

	/* Must write in multiples of 32 cycles (or 32*pads/8 bytes) */
	data_pads = ((seq->seq_cfg >> 16) & 0x3) + 1;
	write_mask = (data_pads << 2) - 1;

	/* Handle non-aligned buf */
	if ((uintptr_t)buf & 0x3) {
		FUNC2(page_buf, buf, size);
		p = (uint8_t *)page_buf;
	} else {
		p = buf;
	}

	/* Handle non-aligned size */
	size_ub = (size + write_mask) & ~write_mask;
	size_lb = size & ~write_mask;
	size_mop = size & write_mask;

	seq->data_size = FUNC0(size_ub);
	seq->addr1 = (offset >> 16) & 0xffff;
	seq->addr2 = offset & 0xffff;

	/* Need to set FIFO to write mode, before writing data to FIFO (see
	 * GNBvb79594)
	 */
	FUNC12(0x00040000, fsm->base + SPI_FAST_SEQ_CFG);

	/*
	 * Before writing data to the FIFO, apply a small delay to allow a
	 * potential change of FIFO direction to complete.
	 */
	if (fsm->fifo_dir_delay == 0)
		FUNC4(fsm->base + SPI_FAST_SEQ_CFG);
	else
		FUNC11(fsm->fifo_dir_delay);


	/* Write data to FIFO, before starting sequence (see GNBvd79593) */
	if (size_lb) {
		FUNC10(fsm, (uint32_t *)p, size_lb);
		p += size_lb;
	}

	/* Handle non-aligned size */
	if (size_mop) {
		FUNC3(t, 0xff, write_mask + 1);	/* fill with 0xff's */
		for (i = 0; i < size_mop; i++)
			t[i] = *p++;

		FUNC10(fsm, tmp, write_mask + 1);
	}

	/* Start sequence */
	FUNC6(fsm, seq);

	/* Wait for sequence to finish */
	FUNC9(fsm);

	/* Wait for completion */
	ret = FUNC8(fsm);
	if (ret && fsm->configuration & CFG_S25FL_CHECK_ERROR_FLAGS)
		FUNC7(fsm);

	/* Exit 32-bit address mode, if required */
	if (fsm->configuration & CFG_WRITE_TOGGLE_32BIT_ADDR)
		FUNC5(fsm, 0);

	return 0;
}