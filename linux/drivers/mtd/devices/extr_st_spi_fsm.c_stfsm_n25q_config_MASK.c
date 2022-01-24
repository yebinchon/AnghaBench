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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct stfsm {int configuration; int /*<<< orphan*/  booted_from_spi; int /*<<< orphan*/  stfsm_seq_en_32bit_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  stfsm_seq_write; int /*<<< orphan*/  stfsm_seq_read; TYPE_1__* info; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CFG_ERASESEC_TOGGLE_32BIT_ADDR ; 
 int CFG_WRITE_TOGGLE_32BIT_ADDR ; 
 int FLASH_FLAG_32BIT_ADDR ; 
 int /*<<< orphan*/  N25Q_CMD_WRVCR ; 
 int FUNC0 (int) ; 
 int N25Q_VCR_WRAP_CONT ; 
 int N25Q_VCR_XIP_DISABLED ; 
 int /*<<< orphan*/  default_write_configs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  n25q_read3_configs ; 
 int /*<<< orphan*/  n25q_read4_configs ; 
 int FUNC2 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC3 (struct stfsm*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct stfsm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stfsm_seq_erase_sector ; 
 int /*<<< orphan*/  FUNC7 (struct stfsm*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct stfsm *fsm)
{
	uint32_t flags = fsm->info->flags;
	uint8_t vcr;
	int ret = 0;
	bool soc_reset;

	/* Configure 'READ' sequence */
	if (flags & FLASH_FLAG_32BIT_ADDR)
		ret = FUNC6(fsm, &fsm->stfsm_seq_read,
						  n25q_read4_configs);
	else
		ret = FUNC6(fsm, &fsm->stfsm_seq_read,
						  n25q_read3_configs);
	if (ret) {
		FUNC1(fsm->dev,
			"failed to prepare READ sequence with flags [0x%08x]\n",
			flags);
		return ret;
	}

	/* Configure 'WRITE' sequence (default configs) */
	ret = FUNC6(fsm, &fsm->stfsm_seq_write,
					  default_write_configs);
	if (ret) {
		FUNC1(fsm->dev,
			"preparing WRITE sequence using flags [0x%08x] failed\n",
			flags);
		return ret;
	}

	/* * Configure 'ERASE_SECTOR' sequence */
	FUNC5(fsm, &stfsm_seq_erase_sector);

	/* Configure 32-bit address support */
	if (flags & FLASH_FLAG_32BIT_ADDR) {
		FUNC4(&fsm->stfsm_seq_en_32bit_addr);

		soc_reset = FUNC2(fsm);
		if (soc_reset || !fsm->booted_from_spi) {
			/*
			 * If we can handle SoC resets, we enable 32-bit
			 * address mode pervasively
			 */
			FUNC3(fsm, 1);
		} else {
			/*
			 * If not, enable/disable for WRITE and ERASE
			 * operations (READ uses special commands)
			 */
			fsm->configuration = (CFG_WRITE_TOGGLE_32BIT_ADDR |
					      CFG_ERASESEC_TOGGLE_32BIT_ADDR);
		}
	}

	/*
	 * Configure device to use 8 dummy cycles
	 */
	vcr = (FUNC0(8) | N25Q_VCR_XIP_DISABLED |
	       N25Q_VCR_WRAP_CONT);
	FUNC7(fsm, N25Q_CMD_WRVCR, vcr, 1, 0);

	return 0;
}