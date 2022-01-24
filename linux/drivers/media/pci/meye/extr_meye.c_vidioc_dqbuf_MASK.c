#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int offset; } ;
struct v4l2_buffer {scalar_t__ memory; int index; int flags; int length; TYPE_1__ m; int /*<<< orphan*/  sequence; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  field; int /*<<< orphan*/  bytesused; } ;
struct file {int f_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__* grab_buffer; int /*<<< orphan*/  doneq_lock; int /*<<< orphan*/  doneq; int /*<<< orphan*/  proc_list; } ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  sequence; int /*<<< orphan*/  ts; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 scalar_t__ MEYE_BUF_DONE ; 
 scalar_t__ MEYE_BUF_UNUSED ; 
 int O_NONBLOCK ; 
 int V4L2_BUF_FLAG_MAPPED ; 
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int gbufsize ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 TYPE_3__ meye ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *fh, struct v4l2_buffer *buf)
{
	int reqnr;

	if (buf->memory != V4L2_MEMORY_MMAP)
		return -EINVAL;

	FUNC2(&meye.lock);

	if (FUNC0(&meye.doneq) == 0 && file->f_flags & O_NONBLOCK) {
		FUNC3(&meye.lock);
		return -EAGAIN;
	}

	if (FUNC5(meye.proc_list,
				     FUNC0(&meye.doneq) != 0) < 0) {
		FUNC3(&meye.lock);
		return -EINTR;
	}

	if (!FUNC1(&meye.doneq, (unsigned char *)&reqnr,
		       sizeof(int), &meye.doneq_lock)) {
		FUNC3(&meye.lock);
		return -EBUSY;
	}

	if (meye.grab_buffer[reqnr].state != MEYE_BUF_DONE) {
		FUNC3(&meye.lock);
		return -EINVAL;
	}

	buf->index = reqnr;
	buf->bytesused = meye.grab_buffer[reqnr].size;
	buf->flags = V4L2_BUF_FLAG_MAPPED | V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	buf->field = V4L2_FIELD_NONE;
	buf->timestamp = FUNC4(meye.grab_buffer[reqnr].ts);
	buf->sequence = meye.grab_buffer[reqnr].sequence;
	buf->memory = V4L2_MEMORY_MMAP;
	buf->m.offset = reqnr * gbufsize;
	buf->length = gbufsize;
	meye.grab_buffer[reqnr].state = MEYE_BUF_UNUSED;
	FUNC3(&meye.lock);

	return 0;
}