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
typedef  int u16 ;
struct qed_sb_attn_info {int known_attn; struct atten_status_block* sb_attn; } ;
struct qed_hwfn {struct qed_sb_attn_info* p_sb_attn; } ;
struct atten_status_block {scalar_t__ sb_index; int /*<<< orphan*/  atten_ack; int /*<<< orphan*/  atten_bits; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int ATTN_STATE_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_MSG_INTR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qed_hwfn*,int) ; 
 int FUNC5 (struct qed_hwfn*,int) ; 

__attribute__((used)) static int FUNC6(struct qed_hwfn *p_hwfn)
{
	struct qed_sb_attn_info *p_sb_attn_sw = p_hwfn->p_sb_attn;
	struct atten_status_block *p_sb_attn = p_sb_attn_sw->sb_attn;
	u32 attn_bits = 0, attn_acks = 0;
	u16 asserted_bits, deasserted_bits;
	__le16 index;
	int rc = 0;

	/* Read current attention bits/acks - safeguard against attentions
	 * by guaranting work on a synchronized timeframe
	 */
	do {
		index = p_sb_attn->sb_index;
		/* finish reading index before the loop condition */
		FUNC2();
		attn_bits = FUNC3(p_sb_attn->atten_bits);
		attn_acks = FUNC3(p_sb_attn->atten_ack);
	} while (index != p_sb_attn->sb_index);
	p_sb_attn->sb_index = index;

	/* Attention / Deassertion are meaningful (and in correct state)
	 * only when they differ and consistent with known state - deassertion
	 * when previous attention & current ack, and assertion when current
	 * attention with no previous attention
	 */
	asserted_bits = (attn_bits & ~attn_acks & ATTN_STATE_BITS) &
		~p_sb_attn_sw->known_attn;
	deasserted_bits = (~attn_bits & attn_acks & ATTN_STATE_BITS) &
		p_sb_attn_sw->known_attn;

	if ((asserted_bits & ~0x100) || (deasserted_bits & ~0x100)) {
		FUNC0(p_hwfn,
			"Attention: Index: 0x%04x, Bits: 0x%08x, Acks: 0x%08x, asserted: 0x%04x, De-asserted 0x%04x [Prev. known: 0x%04x]\n",
			index, attn_bits, attn_acks, asserted_bits,
			deasserted_bits, p_sb_attn_sw->known_attn);
	} else if (asserted_bits == 0x100) {
		FUNC0(p_hwfn, "MFW indication via attention\n");
	} else {
		FUNC1(p_hwfn, NETIF_MSG_INTR,
			   "MFW indication [deassertion]\n");
	}

	if (asserted_bits) {
		rc = FUNC4(p_hwfn, asserted_bits);
		if (rc)
			return rc;
	}

	if (deasserted_bits)
		rc = FUNC5(p_hwfn, deasserted_bits);

	return rc;
}