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
struct pvr2_stream {unsigned int i_bcount; int /*<<< orphan*/  mutex; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  i_count; } ;
struct pvr2_buffer {scalar_t__ state; unsigned int max_count; struct pvr2_stream* stream; void* ptr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  PVR2_TRACE_BUF_FLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ pvr2_buffer_state_idle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct pvr2_buffer *bp, void *ptr, unsigned int cnt)
{
	int ret = 0;
	unsigned long irq_flags;
	struct pvr2_stream *sp;
	if (!bp) return -EINVAL;
	sp = bp->stream;
	FUNC0(&sp->mutex);
	do {
		FUNC4(&sp->list_lock, irq_flags);
		if (bp->state != pvr2_buffer_state_idle) {
			ret = -EPERM;
		} else {
			bp->ptr = ptr;
			bp->stream->i_bcount -= bp->max_count;
			bp->max_count = cnt;
			bp->stream->i_bcount += bp->max_count;
			FUNC3(PVR2_TRACE_BUF_FLOW,
				   "/*---TRACE_FLOW---*/ bufferPool	%8s cap cap=%07d cnt=%02d",
				   FUNC2(
					   pvr2_buffer_state_idle),
				   bp->stream->i_bcount, bp->stream->i_count);
		}
		FUNC5(&sp->list_lock, irq_flags);
	} while (0);
	FUNC1(&sp->mutex);
	return ret;
}