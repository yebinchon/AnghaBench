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
 int /*<<< orphan*/  NFP_HWINFO_LOOKUP_SIZE ; 
 int FUNC0 (struct nfp_nsp*,void*,unsigned int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (void*,unsigned int) ; 
 int /*<<< orphan*/  u32 ; 

int FUNC4(struct nfp_nsp *state, void *buf, unsigned int size)
{
	int err;

	size = FUNC1(u32, size, NFP_HWINFO_LOOKUP_SIZE);

	err = FUNC0(state, buf, size, false);
	if (err)
		return err;

	if (FUNC3(buf, size) == size) {
		FUNC2(state->cpp, "NSP HWinfo value not NULL-terminated\n");
		return -EINVAL;
	}

	return 0;
}