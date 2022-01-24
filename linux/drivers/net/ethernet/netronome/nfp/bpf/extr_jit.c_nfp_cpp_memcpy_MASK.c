#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_6__ {int off; int src_reg; int dst_reg; int /*<<< orphan*/  code; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct nfp_insn_meta {scalar_t__ ldst_gather_len; TYPE_3__ insn; TYPE_2__* paired_st; TYPE_1__ ptr; } ;
typedef  int s16 ;
struct TYPE_5__ {int off; int dst_reg; } ;

/* Variables and functions */
#define  BPF_B 131 
#define  BPF_DW 130 
#define  BPF_H 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  BPF_W 128 
 int /*<<< orphan*/  CMD_CTX_SWAP ; 
 int /*<<< orphan*/  CMD_MODE_32b ; 
 int /*<<< orphan*/  CMD_MODE_40b_BA ; 
 int CMD_OVE_LEN ; 
 int /*<<< orphan*/  CMD_OV_LEN ; 
 int /*<<< orphan*/  CMD_TGT_READ32_SWAP ; 
 int /*<<< orphan*/  CMD_TGT_WRITE32_SWAP ; 
 int /*<<< orphan*/  CMD_TGT_WRITE8_SWAP ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ PTR_TO_MAP_VALUE ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_prog*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC18(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	bool descending_seq = meta->ldst_gather_len < 0;
	s16 len = FUNC3(meta->ldst_gather_len);
	swreg src_base, off;
	bool src_40bit_addr;
	unsigned int i;
	u8 xfer_num;

	off = FUNC9(nfp_prog, meta->insn.off, FUNC8(nfp_prog));
	src_40bit_addr = meta->ptr.type == PTR_TO_MAP_VALUE;
	src_base = FUNC10(meta->insn.src_reg * 2);
	xfer_num = FUNC14(len, 4) / 4;

	if (src_40bit_addr)
		FUNC4(nfp_prog, meta->insn.src_reg * 2, off, &src_base,
			      &off);

	/* Setup PREV_ALU fields to override memory read length. */
	if (len > 32)
		FUNC15(nfp_prog, FUNC12(),
			  CMD_OVE_LEN | FUNC1(CMD_OV_LEN, xfer_num - 1));

	/* Memory read from source addr into transfer-in registers. */
	FUNC6(nfp_prog, CMD_TGT_READ32_SWAP,
		     src_40bit_addr ? CMD_MODE_40b_BA : CMD_MODE_32b, 0,
		     src_base, off, xfer_num - 1, CMD_CTX_SWAP, len > 32);

	/* Move from transfer-in to transfer-out. */
	for (i = 0; i < xfer_num; i++)
		FUNC16(nfp_prog, FUNC13(i), FUNC13(i));

	off = FUNC9(nfp_prog, meta->paired_st->off, FUNC8(nfp_prog));

	if (len <= 8) {
		/* Use single direct_ref write8. */
		FUNC5(nfp_prog, CMD_TGT_WRITE8_SWAP, CMD_MODE_32b, 0,
			 FUNC10(meta->paired_st->dst_reg * 2), off, len - 1,
			 CMD_CTX_SWAP);
	} else if (len <= 32 && FUNC2(len, 4)) {
		/* Use single direct_ref write32. */
		FUNC5(nfp_prog, CMD_TGT_WRITE32_SWAP, CMD_MODE_32b, 0,
			 FUNC10(meta->paired_st->dst_reg * 2), off, xfer_num - 1,
			 CMD_CTX_SWAP);
	} else if (len <= 32) {
		/* Use single indirect_ref write8. */
		FUNC15(nfp_prog, FUNC12(),
			  CMD_OVE_LEN | FUNC1(CMD_OV_LEN, len - 1));
		FUNC7(nfp_prog, CMD_TGT_WRITE8_SWAP, CMD_MODE_32b, 0,
			       FUNC10(meta->paired_st->dst_reg * 2), off,
			       len - 1, CMD_CTX_SWAP);
	} else if (FUNC2(len, 4)) {
		/* Use single indirect_ref write32. */
		FUNC15(nfp_prog, FUNC12(),
			  CMD_OVE_LEN | FUNC1(CMD_OV_LEN, xfer_num - 1));
		FUNC7(nfp_prog, CMD_TGT_WRITE32_SWAP, CMD_MODE_32b, 0,
			       FUNC10(meta->paired_st->dst_reg * 2), off,
			       xfer_num - 1, CMD_CTX_SWAP);
	} else if (len <= 40) {
		/* Use one direct_ref write32 to write the first 32-bytes, then
		 * another direct_ref write8 to write the remaining bytes.
		 */
		FUNC5(nfp_prog, CMD_TGT_WRITE32_SWAP, CMD_MODE_32b, 0,
			 FUNC10(meta->paired_st->dst_reg * 2), off, 7,
			 CMD_CTX_SWAP);

		off = FUNC9(nfp_prog, meta->paired_st->off + 32,
				      FUNC8(nfp_prog));
		FUNC5(nfp_prog, CMD_TGT_WRITE8_SWAP, CMD_MODE_32b, 8,
			 FUNC10(meta->paired_st->dst_reg * 2), off, len - 33,
			 CMD_CTX_SWAP);
	} else {
		/* Use one indirect_ref write32 to write 4-bytes aligned length,
		 * then another direct_ref write8 to write the remaining bytes.
		 */
		u8 new_off;

		FUNC15(nfp_prog, FUNC12(),
			  CMD_OVE_LEN | FUNC1(CMD_OV_LEN, xfer_num - 2));
		FUNC7(nfp_prog, CMD_TGT_WRITE32_SWAP, CMD_MODE_32b, 0,
			       FUNC10(meta->paired_st->dst_reg * 2), off,
			       xfer_num - 2, CMD_CTX_SWAP);
		new_off = meta->paired_st->off + (xfer_num - 1) * 4;
		off = FUNC9(nfp_prog, new_off, FUNC8(nfp_prog));
		FUNC5(nfp_prog, CMD_TGT_WRITE8_SWAP, CMD_MODE_32b,
			 xfer_num - 1, FUNC10(meta->paired_st->dst_reg * 2), off,
			 (len & 0x3) - 1, CMD_CTX_SWAP);
	}

	/* TODO: The following extra load is to make sure data flow be identical
	 *  before and after we do memory copy optimization.
	 *
	 *  The load destination register is not guaranteed to be dead, so we
	 *  need to make sure it is loaded with the value the same as before
	 *  this transformation.
	 *
	 *  These extra loads could be removed once we have accurate register
	 *  usage information.
	 */
	if (descending_seq)
		xfer_num = 0;
	else if (FUNC0(meta->insn.code) != BPF_DW)
		xfer_num = xfer_num - 1;
	else
		xfer_num = xfer_num - 2;

	switch (FUNC0(meta->insn.code)) {
	case BPF_B:
		FUNC17(nfp_prog, FUNC11(meta->insn.dst_reg * 2),
				FUNC13(xfer_num), 1,
				FUNC2(len, 4) ? 3 : (len & 3) - 1);
		break;
	case BPF_H:
		FUNC17(nfp_prog, FUNC11(meta->insn.dst_reg * 2),
				FUNC13(xfer_num), 2, (len & 3) ^ 2);
		break;
	case BPF_W:
		FUNC16(nfp_prog, FUNC11(meta->insn.dst_reg * 2),
			FUNC13(0));
		break;
	case BPF_DW:
		FUNC16(nfp_prog, FUNC11(meta->insn.dst_reg * 2),
			FUNC13(xfer_num));
		FUNC16(nfp_prog, FUNC11(meta->insn.dst_reg * 2 + 1),
			FUNC13(xfer_num + 1));
		break;
	}

	if (FUNC0(meta->insn.code) != BPF_DW)
		FUNC15(nfp_prog, FUNC11(meta->insn.dst_reg * 2 + 1), 0);

	return 0;
}