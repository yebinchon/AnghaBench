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
struct tda_state {int /*<<< orphan*/  m_TMValue_RFCal; } ;

/* Variables and functions */
 int FUNC0 (struct tda_state*) ; 
 int FUNC1 (struct tda_state*,int) ; 
 int FUNC2 (struct tda_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct tda_state *state)
{
	int status = 0;
	do {
		FUNC3(200);      /* Temperature stabilisation */
		status = FUNC0(state);
		if (status < 0)
			break;
		status = FUNC1(state, 0);
		if (status < 0)
			break;
		status = FUNC1(state, 1);
		if (status < 0)
			break;
		status = FUNC1(state, 2);
		if (status < 0)
			break;
		status = FUNC1(state, 3);
		if (status < 0)
			break;
		status = FUNC1(state, 4);
		if (status < 0)
			break;
		status = FUNC1(state, 5);
		if (status < 0)
			break;
		status = FUNC1(state, 6);
		if (status < 0)
			break;
		status = FUNC2(state, &state->m_TMValue_RFCal); /* also switches off Cal mode !!! */
		if (status < 0)
			break;
	} while (0);

	return status;
}