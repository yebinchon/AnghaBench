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
struct ppp_mppe_state {unsigned char* master_key; unsigned char* session_key; TYPE_1__* sha1; struct ppp_mppe_state* sha1_digest; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int CILEN_MPPE ; 
 unsigned char CI_MPPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 unsigned int MPPE_MAX_KEY_LEN ; 
 struct crypto_shash* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*) ; 
 unsigned int FUNC3 (struct crypto_shash*) ; 
 unsigned int FUNC4 (struct crypto_shash*) ; 
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  FUNC5 (struct ppp_mppe_state*) ; 
 void* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 struct ppp_mppe_state* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static void *FUNC10(unsigned char *options, int optlen)
{
	struct ppp_mppe_state *state;
	struct crypto_shash *shash;
	unsigned int digestsize;

	if (optlen != CILEN_MPPE + sizeof(state->master_key) ||
	    options[0] != CI_MPPE || options[1] != CILEN_MPPE ||
	    fips_enabled)
		goto out;

	state = FUNC7(sizeof(*state), GFP_KERNEL);
	if (state == NULL)
		goto out;


	shash = FUNC1("sha1", 0, 0);
	if (FUNC0(shash))
		goto out_free;

	state->sha1 = FUNC6(sizeof(*state->sha1) +
				     FUNC3(shash),
			      GFP_KERNEL);
	if (!state->sha1) {
		FUNC2(shash);
		goto out_free;
	}
	state->sha1->tfm = shash;

	digestsize = FUNC4(shash);
	if (digestsize < MPPE_MAX_KEY_LEN)
		goto out_free;

	state->sha1_digest = FUNC6(digestsize, GFP_KERNEL);
	if (!state->sha1_digest)
		goto out_free;

	/* Save keys. */
	FUNC9(state->master_key, &options[CILEN_MPPE],
	       sizeof(state->master_key));
	FUNC9(state->session_key, state->master_key,
	       sizeof(state->master_key));

	/*
	 * We defer initial key generation until mppe_init(), as mppe_alloc()
	 * is called frequently during negotiation.
	 */

	return (void *)state;

out_free:
	FUNC5(state->sha1_digest);
	if (state->sha1) {
		FUNC2(state->sha1->tfm);
		FUNC8(state->sha1);
	}
	FUNC5(state);
out:
	return NULL;
}