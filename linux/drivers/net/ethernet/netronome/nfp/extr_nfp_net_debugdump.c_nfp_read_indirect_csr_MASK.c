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
typedef  int u32 ;
struct nfp_dumpspec_cpp_isl_id {int /*<<< orphan*/  island; int /*<<< orphan*/  token; int /*<<< orphan*/  target; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFP_IND_ME_REFL_WR_SIG_INIT ; 
 int FUNC1 (struct nfp_cpp*,int,int,void*,int) ; 
 int FUNC2 (struct nfp_cpp*,int,int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct nfp_dumpspec_cpp_isl_id*) ; 

__attribute__((used)) static int
FUNC5(struct nfp_cpp *cpp,
		      struct nfp_dumpspec_cpp_isl_id cpp_params, u32 offset,
		      u32 reg_sz, u32 context, void *dest)
{
	u32 csr_ctx_ptr_offs;
	u32 cpp_id;
	int result;

	csr_ctx_ptr_offs = FUNC3(offset);
	cpp_id = FUNC0(cpp_params.target,
				   NFP_IND_ME_REFL_WR_SIG_INIT,
				   cpp_params.token, cpp_params.island);
	result = FUNC2(cpp, cpp_id, csr_ctx_ptr_offs, context);
	if (result)
		return result;

	cpp_id = FUNC4(&cpp_params);
	result = FUNC1(cpp, cpp_id, csr_ctx_ptr_offs, dest, reg_sz);
	if (result != reg_sz)
		return result < 0 ? result : -EIO;

	result = FUNC1(cpp, cpp_id, offset, dest, reg_sz);
	if (result != reg_sz)
		return result < 0 ? result : -EIO;

	return 0;
}