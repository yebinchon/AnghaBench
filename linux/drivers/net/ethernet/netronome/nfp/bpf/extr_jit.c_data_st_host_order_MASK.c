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
typedef  int u64 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CTX_SWAP ; 
 int /*<<< orphan*/  CMD_MODE_32b ; 
 int /*<<< orphan*/  CMD_TGT_WRITE8_SWAP ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct nfp_prog *nfp_prog, u8 dst_gpr, swreg offset,
		   u64 imm, u8 size)
{
	FUNC3(nfp_prog, FUNC2(0), imm);
	if (size == 8)
		FUNC3(nfp_prog, FUNC2(1), imm >> 32);

	FUNC0(nfp_prog, CMD_TGT_WRITE8_SWAP, CMD_MODE_32b, 0,
		 FUNC1(dst_gpr), offset, size - 1, CMD_CTX_SWAP);

	return 0;
}