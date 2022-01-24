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
typedef  int /*<<< orphan*/  u16 ;
struct tx_cmp {int dummy; } ;
struct bnxt_cp_ring_info {struct tx_cmp** cp_desc_ring; int /*<<< orphan*/  cp_raw_cons; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tx_cmp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct bnxt *bp, struct bnxt_cp_ring_info *cpr)
{
	u32 raw_cons = cpr->cp_raw_cons;
	u16 cons = FUNC2(raw_cons);
	struct tx_cmp *txcmp;

	txcmp = &cpr->cp_desc_ring[FUNC1(cons)][FUNC0(cons)];

	return FUNC3(txcmp, raw_cons);
}