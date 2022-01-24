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
struct pvr2_buffer {int /*<<< orphan*/  purb; int /*<<< orphan*/ * stream; scalar_t__ signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_BUF_POOL ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct pvr2_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pvr2_buffer *bp)
{
#ifdef SANITY_CHECK_BUFFERS
	pvr2_buffer_describe(bp, "delete");
#endif
	FUNC2(bp);
	FUNC1(bp);
	bp->signature = 0;
	bp->stream = NULL;
	FUNC4(bp->purb);
	FUNC3(PVR2_TRACE_BUF_POOL, "/*---TRACE_FLOW---*/ bufferDone     %p",
		   bp);
}