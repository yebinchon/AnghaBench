#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tm6000_dmaqueue {int dummy; } ;
struct tm6000_core {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  done; int /*<<< orphan*/  queue; int /*<<< orphan*/  ts; int /*<<< orphan*/  field_count; int /*<<< orphan*/  state; int /*<<< orphan*/  i; } ;
struct tm6000_buffer {TYPE_1__ vb; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_DEBUG_ISOC ; 
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct tm6000_core*,int /*<<< orphan*/ ,char*,struct tm6000_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct tm6000_core *dev,
				 struct tm6000_dmaqueue *dma_q,
				 struct tm6000_buffer *buf)
{
	/* Advice that buffer was filled */
	FUNC0(dev, V4L2_DEBUG_ISOC, "[%p/%d] wakeup\n", buf, buf->vb.i);
	buf->vb.state = VIDEOBUF_DONE;
	buf->vb.field_count++;
	buf->vb.ts = FUNC1();

	FUNC2(&buf->vb.queue);
	FUNC3(&buf->vb.done);
}