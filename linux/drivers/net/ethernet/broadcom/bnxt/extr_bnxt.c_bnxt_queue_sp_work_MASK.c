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
struct bnxt {int /*<<< orphan*/  sp_task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  bnxt_pf_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bnxt *bp)
{
	if (FUNC0(bp))
		FUNC1(bnxt_pf_wq, &bp->sp_task);
	else
		FUNC2(&bp->sp_task);
}