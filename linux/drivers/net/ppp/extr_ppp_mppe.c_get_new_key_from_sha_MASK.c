#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ppp_mppe_state {int keylen; int /*<<< orphan*/  sha1_digest; int /*<<< orphan*/  sha1; int /*<<< orphan*/  session_key; int /*<<< orphan*/  master_key; } ;
struct TYPE_2__ {int /*<<< orphan*/  sha_pad2; int /*<<< orphan*/  sha_pad1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* sha_pad ; 

__attribute__((used)) static void FUNC3(struct ppp_mppe_state * state)
{
	FUNC1(state->sha1);
	FUNC2(state->sha1, state->master_key,
			    state->keylen);
	FUNC2(state->sha1, sha_pad->sha_pad1,
			    sizeof(sha_pad->sha_pad1));
	FUNC2(state->sha1, state->session_key,
			    state->keylen);
	FUNC2(state->sha1, sha_pad->sha_pad2,
			    sizeof(sha_pad->sha_pad2));
	FUNC0(state->sha1, state->sha1_digest);
}