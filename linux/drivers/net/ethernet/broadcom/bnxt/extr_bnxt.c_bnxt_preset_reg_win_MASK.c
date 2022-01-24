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
struct bnxt {scalar_t__ bar0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_CAG_REG_BASE ; 
 scalar_t__ BNXT_GRCPF_REG_WINDOW_BASE_OUT ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct bnxt *bp)
{
	if (FUNC0(bp)) {
		/* CAG registers map to GRC window #4 */
		FUNC1(BNXT_CAG_REG_BASE,
		       bp->bar0 + BNXT_GRCPF_REG_WINDOW_BASE_OUT + 12);
	}
}