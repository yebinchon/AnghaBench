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
struct bnxt {int cp_nr_rings; struct bnxt_napi** bnapi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_napi*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_napi*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_napi*) ; 
 scalar_t__ FUNC3 (struct bnxt*) ; 

__attribute__((used)) static void FUNC4(struct bnxt *bp)
{
	int i;
	struct bnxt_napi *bnapi;

	for (i = 0; i < bp->cp_nr_rings; i++) {
		bnapi = bp->bnapi[i];
		if (FUNC3(bp)) {
			FUNC2(bnapi);
			FUNC1(bnapi);
			FUNC0(bnapi);
		}
	}
}