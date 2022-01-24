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
struct bnxt_napi {int dummy; } ;
struct bnxt_cp_ring_info {int /*<<< orphan*/  cp_raw_cons; int /*<<< orphan*/  cp_db; struct bnxt_napi* bnapi; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt*,struct bnxt_cp_ring_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct bnxt_napi*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
			  int budget)
{
	struct bnxt_napi *bnapi = cpr->bnapi;
	int rx_pkts;

	rx_pkts = FUNC0(bp, cpr, budget);

	/* ACK completion ring before freeing tx ring and producing new
	 * buffers in rx/agg rings to prevent overflowing the completion
	 * ring.
	 */
	FUNC2(bp, &cpr->cp_db, cpr->cp_raw_cons);

	FUNC1(bp, bnapi);
	return rx_pkts;
}