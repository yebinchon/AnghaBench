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
struct oslec_state {struct oslec_state* snapshot; struct oslec_state** fir_taps16; int /*<<< orphan*/  fir_state_bg; int /*<<< orphan*/  fir_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct oslec_state*) ; 

void FUNC2(struct oslec_state *ec)
{
	int i;

	FUNC0(&ec->fir_state);
	FUNC0(&ec->fir_state_bg);
	for (i = 0; i < 2; i++)
		FUNC1(ec->fir_taps16[i]);
	FUNC1(ec->snapshot);
	FUNC1(ec);
}