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
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  depth; } ;
struct cx18_stream {scalar_t__ vb_type; TYPE_1__ q_full; int /*<<< orphan*/  waitq; int /*<<< orphan*/  vbuf_q; int /*<<< orphan*/  name; int /*<<< orphan*/  s_flags; } ;
struct cx18_open_id {size_t type; int /*<<< orphan*/  fh; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; struct cx18_stream* streams; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 size_t CX18_ENC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  CX18_F_S_STREAMOFF ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cx18_open_id*) ; 
 struct cx18_open_id* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__poll_t FUNC13(struct file *filp, poll_table *wait)
{
	__poll_t req_events = FUNC8(wait);
	struct cx18_open_id *id = FUNC5(filp);
	struct cx18 *cx = id->cx;
	struct cx18_stream *s = &cx->streams[id->type];
	int eof = FUNC10(CX18_F_S_STREAMOFF, &s->s_flags);
	__poll_t res = 0;

	/* Start a capture if there is none */
	if (!eof && !FUNC10(CX18_F_S_STREAMING, &s->s_flags) &&
			(req_events & (EPOLLIN | EPOLLRDNORM))) {
		int rc;

		FUNC6(&cx->serialize_lock);
		rc = FUNC4(id);
		FUNC7(&cx->serialize_lock);
		if (rc) {
			FUNC2("Could not start capture for %s (%d)\n",
					s->name, rc);
			return EPOLLERR;
		}
		FUNC0("Encoder poll started capture\n");
	}

	if ((s->vb_type == V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
		(id->type == CX18_ENC_STREAM_TYPE_YUV)) {
		__poll_t videobuf_poll = FUNC12(filp, &s->vbuf_q, wait);

		if (FUNC11(&id->fh))
			res |= EPOLLPRI;
		if (eof && videobuf_poll == EPOLLERR)
			return res | EPOLLHUP;
		return res | videobuf_poll;
	}

	/* add stream's waitq to the poll list */
	FUNC1("Encoder poll\n");
	if (FUNC11(&id->fh))
		res |= EPOLLPRI;
	else
		FUNC9(filp, &s->waitq, wait);

	if (FUNC3(&s->q_full.depth))
		return res | EPOLLIN | EPOLLRDNORM;
	if (eof)
		return res | EPOLLHUP;
	return res;
}