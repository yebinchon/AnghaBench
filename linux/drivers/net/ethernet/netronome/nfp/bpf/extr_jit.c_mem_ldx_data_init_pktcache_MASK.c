#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_3__ {int src_reg; } ;
struct TYPE_4__ {int range_start; int range_end; } ;
struct nfp_insn_meta {TYPE_1__ insn; TYPE_2__ pkt_cache; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CTX_SWAP ; 
 int /*<<< orphan*/  CMD_MODE_32b ; 
 int CMD_OVE_LEN ; 
 int /*<<< orphan*/  CMD_OV_LEN ; 
 int /*<<< orphan*/  CMD_TGT_READ32_SWAP ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int REG_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct nfp_prog *nfp_prog,
			   struct nfp_insn_meta *meta)
{
	s16 range_start = meta->pkt_cache.range_start;
	s16 range_end = meta->pkt_cache.range_end;
	swreg src_base, off;
	u8 xfer_num, len;
	bool indir;

	off = FUNC3(nfp_prog, range_start, FUNC2(nfp_prog));
	src_base = FUNC4(meta->insn.src_reg * 2);
	len = range_end - range_start;
	xfer_num = FUNC6(len, REG_WIDTH) / REG_WIDTH;

	indir = len > 8 * REG_WIDTH;
	/* Setup PREV_ALU for indirect mode. */
	if (indir)
		FUNC7(nfp_prog, FUNC5(),
			  CMD_OVE_LEN | FUNC0(CMD_OV_LEN, xfer_num - 1));

	/* Cache memory into transfer-in registers. */
	FUNC1(nfp_prog, CMD_TGT_READ32_SWAP, CMD_MODE_32b, 0, src_base,
		     off, xfer_num - 1, CMD_CTX_SWAP, indir);
}