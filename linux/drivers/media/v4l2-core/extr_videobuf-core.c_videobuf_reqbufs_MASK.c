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
struct videobuf_queue {scalar_t__ type; TYPE_1__* ops; int /*<<< orphan*/  stream; scalar_t__ streaming; } ;
struct v4l2_requestbuffers {scalar_t__ type; int count; int /*<<< orphan*/  memory; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* buf_setup ) (struct videobuf_queue*,unsigned int*,unsigned int*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  V4L2_MEMORY_OVERLAY ; 
 int /*<<< orphan*/  V4L2_MEMORY_USERPTR ; 
 unsigned int VIDEO_MAX_FRAME ; 
 int FUNC1 (struct videobuf_queue*) ; 
 int FUNC2 (struct videobuf_queue*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct videobuf_queue*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct videobuf_queue*) ; 

int FUNC8(struct videobuf_queue *q,
		 struct v4l2_requestbuffers *req)
{
	unsigned int size, count;
	int retval;

	if (req->memory != V4L2_MEMORY_MMAP     &&
	    req->memory != V4L2_MEMORY_USERPTR  &&
	    req->memory != V4L2_MEMORY_OVERLAY) {
		FUNC3(1, "reqbufs: memory type invalid\n");
		return -EINVAL;
	}

	FUNC6(q);
	if (req->type != q->type) {
		FUNC3(1, "reqbufs: queue type invalid\n");
		retval = -EINVAL;
		goto done;
	}

	if (q->streaming) {
		FUNC3(1, "reqbufs: streaming already exists\n");
		retval = -EBUSY;
		goto done;
	}
	if (!FUNC4(&q->stream)) {
		FUNC3(1, "reqbufs: stream running\n");
		retval = -EBUSY;
		goto done;
	}

	if (req->count == 0) {
		FUNC3(1, "reqbufs: count invalid (%d)\n", req->count);
		retval = FUNC1(q);
		goto done;
	}

	count = req->count;
	if (count > VIDEO_MAX_FRAME)
		count = VIDEO_MAX_FRAME;
	size = 0;
	q->ops->buf_setup(q, &count, &size);
	FUNC3(1, "reqbufs: bufs=%d, size=0x%x [%u pages total]\n",
		count, size,
		(unsigned int)((count * FUNC0(size)) >> PAGE_SHIFT));

	retval = FUNC2(q, count, size, req->memory);
	if (retval < 0) {
		FUNC3(1, "reqbufs: mmap setup returned %d\n", retval);
		goto done;
	}

	req->count = retval;
	retval = 0;

 done:
	FUNC7(q);
	return retval;
}