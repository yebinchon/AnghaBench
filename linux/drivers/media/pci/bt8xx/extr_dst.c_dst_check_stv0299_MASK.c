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
typedef  int u8 ;
struct dst_state {int /*<<< orphan*/  tuner_type; int /*<<< orphan*/  rxbuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUNER_TYPE_STV0299 ; 
 int /*<<< orphan*/  FUNC0 (struct dst_state*) ; 
 int FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (struct dst_state*,int*,int) ; 
 scalar_t__ FUNC3 (int**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct dst_state *state)
{
	u8 check_stv0299[] = { 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };

	check_stv0299[7] = FUNC1(check_stv0299, 7);
	if (FUNC2(state, check_stv0299, 8) < 0) {
		FUNC4("Cmd=[0x04] failed\n");
		return -1;
	}
	FUNC0(state);

	if (FUNC3(&check_stv0299, &state->rxbuffer, 8)) {
		FUNC4("Found a STV0299 NIM\n");
		state->tuner_type = TUNER_TYPE_STV0299;
		return 0;
	}

	return -1;
}