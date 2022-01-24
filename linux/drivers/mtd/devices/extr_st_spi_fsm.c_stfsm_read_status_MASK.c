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
typedef  int /*<<< orphan*/  uint32_t ;
struct stfsm_seq {int* seq_opc; } ;
struct stfsm {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SEQ_OPC_PADS_1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stfsm*,struct stfsm_seq*) ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*,int /*<<< orphan*/ *,int) ; 
 struct stfsm_seq stfsm_seq_read_status_fifo ; 
 int /*<<< orphan*/  FUNC6 (struct stfsm*) ; 

__attribute__((used)) static int FUNC7(struct stfsm *fsm, uint8_t cmd,
			     uint8_t *data, int bytes)
{
	struct stfsm_seq *seq = &stfsm_seq_read_status_fifo;
	uint32_t tmp;
	uint8_t *t = (uint8_t *)&tmp;
	int i;

	FUNC3(fsm->dev, "read 'status' register [0x%02x], %d byte(s)\n",
		cmd, bytes);

	FUNC0(bytes != 1 && bytes != 2);

	seq->seq_opc[0] = (SEQ_OPC_PADS_1 | FUNC1(8) |
			   FUNC2(cmd)),

	FUNC4(fsm, seq);

	FUNC5(fsm, &tmp, 4);

	for (i = 0; i < bytes; i++)
		data[i] = t[i];

	FUNC6(fsm);

	return 0;
}