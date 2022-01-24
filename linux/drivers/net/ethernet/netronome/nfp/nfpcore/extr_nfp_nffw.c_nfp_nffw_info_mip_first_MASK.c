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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_nffw_info {int /*<<< orphan*/  cpp; } ;
struct nffw_fwinfo {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int NFP_MU_ADDR_ACCESS_TYPE_DIRECT ; 
 int NFP_MU_ADDR_ACCESS_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct nffw_fwinfo*) ; 
 scalar_t__ FUNC1 (struct nffw_fwinfo*) ; 
 int FUNC2 (struct nffw_fwinfo*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct nffw_fwinfo* FUNC4 (struct nfp_nffw_info*) ; 

int FUNC5(struct nfp_nffw_info *state, u32 *cpp_id, u64 *off)
{
	struct nffw_fwinfo *fwinfo;

	fwinfo = FUNC4(state);
	if (!fwinfo)
		return -EINVAL;

	*cpp_id = FUNC0(fwinfo);
	*off = FUNC2(fwinfo);

	if (FUNC1(fwinfo)) {
		int locality_off = FUNC3(state->cpp);

		*off &= ~(NFP_MU_ADDR_ACCESS_TYPE_MASK << locality_off);
		*off |= NFP_MU_ADDR_ACCESS_TYPE_DIRECT << locality_off;
	}

	return 0;
}