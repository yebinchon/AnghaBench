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
typedef  int /*<<< orphan*/  uint32_t ;
struct stfsm_seq {int* seq_opc; } ;
struct stfsm {struct stfsm_seq stfsm_seq_en_32bit_addr; } ;

/* Variables and functions */
 int SEQ_OPC_CSDEASSERT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SEQ_OPC_PADS_1 ; 
 int /*<<< orphan*/  SPINOR_OP_EN4B ; 
 int /*<<< orphan*/  SPINOR_OP_EX4B ; 
 int /*<<< orphan*/  FUNC2 (struct stfsm*,struct stfsm_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct stfsm*) ; 

__attribute__((used)) static int FUNC4(struct stfsm *fsm, int enter)
{
	struct stfsm_seq *seq = &fsm->stfsm_seq_en_32bit_addr;
	uint32_t cmd = enter ? SPINOR_OP_EN4B : SPINOR_OP_EX4B;

	seq->seq_opc[0] = (SEQ_OPC_PADS_1 |
			   FUNC0(8) |
			   FUNC1(cmd) |
			   SEQ_OPC_CSDEASSERT);

	FUNC2(fsm, seq);

	FUNC3(fsm);

	return 0;
}