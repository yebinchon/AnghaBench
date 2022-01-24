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
typedef  scalar_t__ u32 ;
struct mt2063_state {int /*<<< orphan*/  init; } ;
struct dvb_frontend {struct mt2063_state* tuner_priv; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ TUNER_STATUS_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (struct mt2063_state*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u32 *tuner_status)
{
	struct mt2063_state *state = fe->tuner_priv;
	int status;

	FUNC0(2, "\n");

	if (!state->init)
		return -ENODEV;

	*tuner_status = 0;
	status = FUNC1(state);
	if (status < 0)
		return status;
	if (status)
		*tuner_status = TUNER_STATUS_LOCKED;

	FUNC0(1, "Tuner status: %d", *tuner_status);

	return 0;
}