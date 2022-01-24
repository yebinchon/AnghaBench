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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CTX_SWAP ; 
 int /*<<< orphan*/  CMD_MODE_32b ; 
 int /*<<< orphan*/  CMD_TGT_READ8 ; 
 int /*<<< orphan*/  SHF_OP_NONE ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*,struct nfp_insn_meta*,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, swreg offset,
	u8 dst_gpr, int size)
{
	unsigned int i;
	u16 shift, sz;

	/* We load the value from the address indicated in @offset and then
	 * shift out the data we don't need.  Note: this is big endian!
	 */
	sz = FUNC2(size, 4);
	shift = size < 4 ? 4 - size : 0;

	FUNC0(nfp_prog, CMD_TGT_READ8, CMD_MODE_32b, 0,
		 FUNC3(nfp_prog), offset, sz - 1, CMD_CTX_SWAP);

	i = 0;
	if (shift)
		FUNC1(nfp_prog, FUNC4(dst_gpr), FUNC5(), SHF_OP_NONE,
			 FUNC6(0), SHF_SC_R_SHF, shift * 8);
	else
		for (; i * 4 < size; i++)
			FUNC7(nfp_prog, FUNC4(dst_gpr + i), FUNC6(i));

	if (i < 2)
		FUNC8(nfp_prog, meta, dst_gpr);

	return 0;
}