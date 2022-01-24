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
typedef  int u32 ;
struct zl10353_state {int ucblocks; } ;
struct dvb_frontend {struct zl10353_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RS_UBC_0 ; 
 int /*<<< orphan*/  RS_UBC_1 ; 
 int FUNC0 (struct zl10353_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, u32 *ucblocks)
{
	struct zl10353_state *state = fe->demodulator_priv;
	u32 ubl = 0;

	ubl = FUNC0(state, RS_UBC_1) << 8 |
	      FUNC0(state, RS_UBC_0);

	state->ucblocks += ubl;
	*ucblocks = state->ucblocks;

	return 0;
}