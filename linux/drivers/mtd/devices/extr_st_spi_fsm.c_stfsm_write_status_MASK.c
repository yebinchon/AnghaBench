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
typedef  scalar_t__ uint16_t ;
struct stfsm_seq {int* seq_opc; int status; int /*<<< orphan*/ * seq; } ;
struct stfsm {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SEQ_OPC_PADS_1 ; 
 int STA_CSDEASSERT ; 
 int STA_PADS_1 ; 
 int /*<<< orphan*/  STFSM_INST_STA_WR1 ; 
 int /*<<< orphan*/  STFSM_INST_STA_WR1_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct stfsm*,struct stfsm_seq*) ; 
 struct stfsm_seq stfsm_seq_write_status ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC6 (struct stfsm*) ; 

__attribute__((used)) static int FUNC7(struct stfsm *fsm, uint8_t cmd,
			    uint16_t data, int bytes, int wait_busy)
{
	struct stfsm_seq *seq = &stfsm_seq_write_status;

	FUNC3(fsm->dev,
		"write 'status' register [0x%02x], %d byte(s), 0x%04x\n"
		" %s wait-busy\n", cmd, bytes, data, wait_busy ? "with" : "no");

	FUNC0(bytes != 1 && bytes != 2);

	seq->seq_opc[1] = (SEQ_OPC_PADS_1 | FUNC1(8) |
			   FUNC2(cmd));

	seq->status = (uint32_t)data | STA_PADS_1 | STA_CSDEASSERT;
	seq->seq[2] = (bytes == 1) ? STFSM_INST_STA_WR1 : STFSM_INST_STA_WR1_2;

	FUNC4(fsm, seq);

	FUNC6(fsm);

	if (wait_busy)
		FUNC5(fsm);

	return 0;
}