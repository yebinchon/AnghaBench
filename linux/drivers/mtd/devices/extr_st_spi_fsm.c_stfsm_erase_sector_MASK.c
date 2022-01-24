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
typedef  int uint32_t ;
struct stfsm_seq {int addr1; int addr2; } ;
struct stfsm {int configuration; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CFG_ERASESEC_TOGGLE_32BIT_ADDR ; 
 int CFG_S25FL_CHECK_ERROR_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stfsm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stfsm*,struct stfsm_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct stfsm*) ; 
 struct stfsm_seq stfsm_seq_erase_sector ; 
 int FUNC4 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*) ; 

__attribute__((used)) static int FUNC6(struct stfsm *fsm, uint32_t offset)
{
	struct stfsm_seq *seq = &stfsm_seq_erase_sector;
	int ret;

	FUNC0(fsm->dev, "erasing sector at 0x%08x\n", offset);

	/* Enter 32-bit address mode, if required */
	if (fsm->configuration & CFG_ERASESEC_TOGGLE_32BIT_ADDR)
		FUNC1(fsm, 1);

	seq->addr1 = (offset >> 16) & 0xffff;
	seq->addr2 = offset & 0xffff;

	FUNC2(fsm, seq);

	FUNC5(fsm);

	/* Wait for completion */
	ret = FUNC4(fsm);
	if (ret && fsm->configuration & CFG_S25FL_CHECK_ERROR_FLAGS)
		FUNC3(fsm);

	/* Exit 32-bit address mode, if required */
	if (fsm->configuration & CFG_ERASESEC_TOGGLE_32BIT_ADDR)
		FUNC1(fsm, 0);

	return ret;
}