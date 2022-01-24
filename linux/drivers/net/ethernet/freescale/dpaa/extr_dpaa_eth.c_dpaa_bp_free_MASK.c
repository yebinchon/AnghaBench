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
struct dpaa_bp {size_t bpid; int /*<<< orphan*/  pool; scalar_t__ free_buf_cb; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** dpaa_bp_array ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa_bp*) ; 
 struct dpaa_bp* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dpaa_bp *dpaa_bp)
{
	struct dpaa_bp *bp = FUNC2(dpaa_bp->bpid);

	/* the mapping between bpid and dpaa_bp is done very late in the
	 * allocation procedure; if something failed before the mapping, the bp
	 * was not configured, therefore we don't need the below instructions
	 */
	if (!bp)
		return;

	if (!FUNC3(&bp->refs))
		return;

	if (bp->free_buf_cb)
		FUNC1(bp);

	dpaa_bp_array[bp->bpid] = NULL;
	FUNC0(bp->pool);
}