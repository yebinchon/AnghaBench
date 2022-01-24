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
struct stfsm_seq {int* seq_opc; int addr_cfg; } ;

/* Variables and functions */
 int ADR_CFG_CSDEASSERT_ADD2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ADR_CFG_PADS_1_ADD1 ; 
 int ADR_CFG_PADS_1_ADD2 ; 
 int /*<<< orphan*/  S25FL_CMD_SE4 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int SEQ_OPC_PADS_1 ; 

__attribute__((used)) static void FUNC4(struct stfsm_seq *seq)
{
	seq->seq_opc[1] = (SEQ_OPC_PADS_1 |
			   FUNC2(8) |
			   FUNC3(S25FL_CMD_SE4));

	seq->addr_cfg = (FUNC0(16) |
			 ADR_CFG_PADS_1_ADD1 |
			 FUNC1(16) |
			 ADR_CFG_PADS_1_ADD2 |
			 ADR_CFG_CSDEASSERT_ADD2);
}