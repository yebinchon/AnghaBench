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
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;
typedef  enum cmd_mode { ____Placeholder_cmd_mode } cmd_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CTX_SWAP ; 
 int /*<<< orphan*/  CMD_TGT_READ32_SWAP ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHF_SC_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,struct nfp_insn_meta*,int) ; 

__attribute__((used)) static int
FUNC8(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
		   u8 dst_gpr, swreg lreg, swreg rreg, int size,
		   enum cmd_mode mode)
{
	unsigned int i;
	u8 mask, sz;

	/* We load the value from the address indicated in rreg + lreg and then
	 * mask out the data we don't need.  Note: this is little endian!
	 */
	sz = FUNC3(size, 4);
	mask = size < 4 ? FUNC0(size - 1, 0) : 0;

	FUNC1(nfp_prog, CMD_TGT_READ32_SWAP, mode, 0,
		 lreg, rreg, sz / 4 - 1, CMD_CTX_SWAP);

	i = 0;
	if (mask)
		FUNC2(nfp_prog, FUNC4(dst_gpr), mask,
				  FUNC5(0), SHF_SC_NONE, 0, true);
	else
		for (; i * 4 < size; i++)
			FUNC6(nfp_prog, FUNC4(dst_gpr + i), FUNC5(i));

	if (i < 2)
		FUNC7(nfp_prog, meta, dst_gpr);

	return 0;
}