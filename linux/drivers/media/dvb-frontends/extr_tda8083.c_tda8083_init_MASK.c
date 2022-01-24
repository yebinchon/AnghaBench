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

/* Variables and functions */
 int* tda8083_init_tab ; 
 int /*<<< orphan*/  FUNC0 (struct tda8083_state*,int,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe)
{
	struct tda8083_state* state = fe->demodulator_priv;
	int i;

	for (i=0; i<44; i++)
		FUNC0 (state, i, tda8083_init_tab[i]);

	FUNC0 (state, 0x00, 0x3c);
	FUNC0 (state, 0x00, 0x04);

	return 0;
}