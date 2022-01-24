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
typedef  int /*<<< orphan*/  u32 ;
struct tx_cmp {int dummy; } ;
struct bnxt_cp_ring_info {int /*<<< orphan*/  cp_raw_cons; struct tx_cmp** cp_desc_ring; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 scalar_t__ CMP_TYPE_RX_L2_CMP ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tx_cmp*) ; 
 int /*<<< orphan*/  FUNC5 (struct tx_cmp*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bnxt*,struct bnxt_cp_ring_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
			      int pkt_size)
{
	struct tx_cmp *txcmp;
	int rc = -EIO;
	u32 raw_cons;
	u32 cons;
	int i;

	raw_cons = cpr->cp_raw_cons;
	for (i = 0; i < 200; i++) {
		cons = FUNC3(raw_cons);
		txcmp = &cpr->cp_desc_ring[FUNC1(cons)][FUNC0(cons)];

		if (!FUNC5(txcmp, raw_cons)) {
			FUNC8(5);
			continue;
		}

		/* The valid test of the entry must be done first before
		 * reading any further.
		 */
		FUNC7();
		if (FUNC4(txcmp) == CMP_TYPE_RX_L2_CMP) {
			rc = FUNC6(bp, cpr, raw_cons, pkt_size);
			raw_cons = FUNC2(raw_cons);
			raw_cons = FUNC2(raw_cons);
			break;
		}
		raw_cons = FUNC2(raw_cons);
	}
	cpr->cp_raw_cons = raw_cons;
	return rc;
}