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
struct tda10021_state {int dummy; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tda10021_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct tda10021_state*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend* fe, int enable)
{
	struct tda10021_state* state = fe->demodulator_priv;

	if (enable) {
		FUNC0(state);
	} else {
		FUNC1(state);
	}
	return 0;
}