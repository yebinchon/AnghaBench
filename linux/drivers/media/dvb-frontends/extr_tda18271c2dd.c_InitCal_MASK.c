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
struct tda_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tda_state*) ; 
 int FUNC1 (struct tda_state*) ; 
 int FUNC2 (struct tda_state*) ; 

__attribute__((used)) static int FUNC3(struct tda_state *state)
{
	int status = 0;

	do {
		status = FUNC1(state);
		if (status < 0)
			break;
		status = FUNC0(state);
		if (status < 0)
			break;
		status = FUNC2(state);
		if (status < 0)
			break;
		/* m_bInitDone = true; */
	} while (0);
	return status;
}