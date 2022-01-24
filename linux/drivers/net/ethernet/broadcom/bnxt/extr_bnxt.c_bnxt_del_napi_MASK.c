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
struct bnxt_napi {int /*<<< orphan*/  napi; } ;
struct bnxt {int cp_nr_rings; struct bnxt_napi** bnapi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct bnxt *bp)
{
	int i;

	if (!bp->bnapi)
		return;

	for (i = 0; i < bp->cp_nr_rings; i++) {
		struct bnxt_napi *bnapi = bp->bnapi[i];

		FUNC0(&bnapi->napi);
		FUNC1(&bnapi->napi);
	}
	/* We called napi_hash_del() before netif_napi_del(), we need
	 * to respect an RCU grace period before freeing napi structures.
	 */
	FUNC2();
}