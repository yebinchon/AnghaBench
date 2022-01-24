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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rx_agg_cmp {int dummy; } ;
struct bnxt_cp_ring_info {int /*<<< orphan*/ ** cp_desc_ring; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rx_agg_cmp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
			       u8 agg_bufs, u32 *raw_cons)
{
	u16 last;
	struct rx_agg_cmp *agg;

	*raw_cons = FUNC0(*raw_cons, agg_bufs);
	last = FUNC3(*raw_cons);
	agg = (struct rx_agg_cmp *)
		&cpr->cp_desc_ring[FUNC2(last)][FUNC1(last)];
	return FUNC4(agg, *raw_cons);
}