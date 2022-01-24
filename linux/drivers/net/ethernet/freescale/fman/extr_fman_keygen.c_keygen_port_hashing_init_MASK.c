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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct keygen_scheme {int use_hashing; int base_fqid; int hash_fqid_count; scalar_t__ match_vector; int /*<<< orphan*/  hashShift; int /*<<< orphan*/  symmetric_hash; int /*<<< orphan*/  hw_port_id; scalar_t__ used; } ;
struct fman_keygen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_HASH_SHIFT ; 
 int /*<<< orphan*/  DEFAULT_SYMMETRIC_HASH ; 
 int EINVAL ; 
 int FUNC0 (struct fman_keygen*,int /*<<< orphan*/ *) ; 
 struct keygen_scheme* FUNC1 (struct fman_keygen*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fman_keygen*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct fman_keygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct keygen_scheme*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct fman_keygen *keygen, u8 hw_port_id,
			     u32 hash_base_fqid, u32 hash_size)
{
	struct keygen_scheme *scheme;
	u8 scheme_id;
	int err;

	/* Validate Scheme configuration parameters */
	if (hash_base_fqid == 0 || (hash_base_fqid & ~0x00FFFFFF)) {
		FUNC5("Base FQID must be between 1 and 2^24-1\n");
		return -EINVAL;
	}
	if (hash_size == 0 || (hash_size & (hash_size - 1)) != 0) {
		FUNC5("Hash size must be power of two\n");
		return -EINVAL;
	}

	/* Find a free scheme */
	err = FUNC0(keygen, &scheme_id);
	if (err) {
		FUNC5("The maximum number of available Schemes has been exceeded\n");
		return -EINVAL;
	}

	/* Create and configure Hard-Coded Scheme: */

	scheme = FUNC1(keygen, scheme_id);
	if (!scheme) {
		FUNC5("Requested Scheme does not exist\n");
		return -EINVAL;
	}
	if (scheme->used) {
		FUNC5("The requested Scheme is already used\n");
		return -EINVAL;
	}

	/* Clear all scheme fields because the scheme may have been
	 * previously used
	 */
	FUNC4(scheme, 0, sizeof(struct keygen_scheme));

	/* Setup scheme: */
	scheme->hw_port_id = hw_port_id;
	scheme->use_hashing = true;
	scheme->base_fqid = hash_base_fqid;
	scheme->hash_fqid_count = hash_size;
	scheme->symmetric_hash = DEFAULT_SYMMETRIC_HASH;
	scheme->hashShift = DEFAULT_HASH_SHIFT;

	/* All Schemes in hard-coded configuration
	 * are Indirect Schemes
	 */
	scheme->match_vector = 0;

	err = FUNC3(keygen, scheme_id, true);
	if (err != 0) {
		FUNC5("Scheme setup failed\n");
		return err;
	}

	/* Bind Rx port to Scheme */
	err = FUNC2(keygen, scheme_id, true);
	if (err != 0) {
		FUNC5("Binding port to schemes failed\n");
		return err;
	}

	return 0;
}