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
struct videobuf_queue {scalar_t__ ext_lock; } ;
struct videobuf_buffer {int /*<<< orphan*/  done; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MAGIC_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct videobuf_queue*,struct videobuf_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC7(struct videobuf_queue *q, struct videobuf_buffer *vb,
		int non_blocking, int intr)
{
	bool is_ext_locked;
	int ret = 0;

	FUNC0(vb->magic, MAGIC_BUFFER);

	if (non_blocking) {
		if (FUNC4(q, vb))
			return 0;
		return -EAGAIN;
	}

	is_ext_locked = q->ext_lock && FUNC1(q->ext_lock);

	/* Release vdev lock to prevent this wait from blocking outside access to
	   the device. */
	if (is_ext_locked)
		FUNC3(q->ext_lock);
	if (intr)
		ret = FUNC6(vb->done,
					FUNC4(q, vb));
	else
		FUNC5(vb->done, FUNC4(q, vb));
	/* Relock */
	if (is_ext_locked)
		FUNC2(q->ext_lock);

	return ret;
}