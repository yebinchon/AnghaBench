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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rx_tpa_end_cmp_ext {int /*<<< orphan*/  rx_tpa_end_cmp_errors_v2; } ;
struct rx_cmp_ext {int /*<<< orphan*/  rx_cmp_cfa_code_errors_v2; } ;
struct rx_cmp {int dummy; } ;
struct bnxt_cp_ring_info {int /*<<< orphan*/ ** cp_desc_ring; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 scalar_t__ CMP_TYPE_RX_L2_CMP ; 
 scalar_t__ CMP_TYPE_RX_L2_TPA_END_CMP ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_CMPL_ERRORS_CRC_ERROR ; 
 scalar_t__ FUNC4 (struct rx_cmp*) ; 
 int /*<<< orphan*/  FUNC5 (struct rx_cmp_ext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_TPA_END_CMP_ERRORS ; 
 int FUNC6 (struct bnxt*,struct bnxt_cp_ring_info*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct bnxt *bp,
				 struct bnxt_cp_ring_info *cpr,
				 u32 *raw_cons, u8 *event)
{
	u32 tmp_raw_cons = *raw_cons;
	struct rx_cmp_ext *rxcmp1;
	struct rx_cmp *rxcmp;
	u16 cp_cons;
	u8 cmp_type;

	cp_cons = FUNC3(tmp_raw_cons);
	rxcmp = (struct rx_cmp *)
			&cpr->cp_desc_ring[FUNC1(cp_cons)][FUNC0(cp_cons)];

	tmp_raw_cons = FUNC2(tmp_raw_cons);
	cp_cons = FUNC3(tmp_raw_cons);
	rxcmp1 = (struct rx_cmp_ext *)
			&cpr->cp_desc_ring[FUNC1(cp_cons)][FUNC0(cp_cons)];

	if (!FUNC5(rxcmp1, tmp_raw_cons))
		return -EBUSY;

	cmp_type = FUNC4(rxcmp);
	if (cmp_type == CMP_TYPE_RX_L2_CMP) {
		rxcmp1->rx_cmp_cfa_code_errors_v2 |=
			FUNC7(RX_CMPL_ERRORS_CRC_ERROR);
	} else if (cmp_type == CMP_TYPE_RX_L2_TPA_END_CMP) {
		struct rx_tpa_end_cmp_ext *tpa_end1;

		tpa_end1 = (struct rx_tpa_end_cmp_ext *)rxcmp1;
		tpa_end1->rx_tpa_end_cmp_errors_v2 |=
			FUNC7(RX_TPA_END_CMP_ERRORS);
	}
	return FUNC6(bp, cpr, raw_cons, event);
}