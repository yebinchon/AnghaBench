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
struct nfp_nsp {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  NFP_HWINFO_LOOKUP_SIZE ; 
 int FUNC0 (struct nfp_nsp*,void*,unsigned int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*) ; 
 unsigned int FUNC5 (void*,unsigned int) ; 
 int /*<<< orphan*/  u32 ; 

int FUNC6(struct nfp_nsp *state, void *buf,
				   unsigned int size, const char *default_val)
{
	int err;

	/* Ensure that the default value is usable irrespective of whether
	 * it is actually going to be used.
	 */
	if (FUNC5(default_val, size) == size)
		return -EINVAL;

	if (!FUNC3(state)) {
		FUNC4(buf, default_val);
		return 0;
	}

	size = FUNC1(u32, size, NFP_HWINFO_LOOKUP_SIZE);

	err = FUNC0(state, buf, size, true);
	if (err) {
		if (err == -ENOENT) {
			FUNC4(buf, default_val);
			return 0;
		}

		FUNC2(state->cpp, "NSP HWinfo lookup failed: %d\n", err);
		return err;
	}

	if (FUNC5(buf, size) == size) {
		FUNC2(state->cpp, "NSP HWinfo value not NULL-terminated\n");
		return -EINVAL;
	}

	return 0;
}