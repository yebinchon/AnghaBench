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
struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tda8083_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tda8083_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
				   struct dvb_diseqc_master_cmd *m)
{
	struct tda8083_state* state = fe->demodulator_priv;
	int i;

	FUNC1 (state, 0x29, (m->msg_len - 3) | (1 << 2)); /* enable */

	for (i=0; i<m->msg_len; i++)
		FUNC1 (state, 0x23 + i, m->msg[i]);

	FUNC1 (state, 0x29, (m->msg_len - 3) | (3 << 2)); /* send!! */

	FUNC0 (state, 100);

	return 0;
}