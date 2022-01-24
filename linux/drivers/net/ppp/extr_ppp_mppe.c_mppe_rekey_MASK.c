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
struct ppp_mppe_state {int* sha1_digest; int keylen; int* session_key; int /*<<< orphan*/  arc4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp_mppe_state*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

__attribute__((used)) static void FUNC4(struct ppp_mppe_state * state, int initial_key)
{
	FUNC2(state);
	if (!initial_key) {
		FUNC1(&state->arc4, state->sha1_digest, state->keylen);
		FUNC0(&state->arc4, state->session_key, state->sha1_digest,
			   state->keylen);
	} else {
		FUNC3(state->session_key, state->sha1_digest, state->keylen);
	}
	if (state->keylen == 8) {
		/* See RFC 3078 */
		state->session_key[0] = 0xd1;
		state->session_key[1] = 0x26;
		state->session_key[2] = 0x9e;
	}
	FUNC1(&state->arc4, state->session_key, state->keylen);
}