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
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_4__ {scalar_t__ length; } ;
struct ivtv_stream {scalar_t__ type; TYPE_2__ q_io; TYPE_1__ q_full; int /*<<< orphan*/  waitq; int /*<<< orphan*/  name; int /*<<< orphan*/  s_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  wait; } ;
struct ivtv_open_id {size_t type; TYPE_3__ fh; struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  serialize_lock; struct ivtv_stream* streams; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IVTV_ENC_STREAM_TYPE_RAD ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 struct ivtv_open_id* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ivtv_open_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 

__poll_t FUNC11(struct file *filp, poll_table *wait)
{
	__poll_t req_events = FUNC7(wait);
	struct ivtv_open_id *id = FUNC3(filp->private_data);
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];
	int eof = FUNC9(IVTV_F_S_STREAMOFF, &s->s_flags);
	__poll_t res = 0;

	/* Start a capture if there is none */
	if (!eof && !FUNC9(IVTV_F_S_STREAMING, &s->s_flags) &&
			s->type != IVTV_ENC_STREAM_TYPE_RAD &&
			(req_events & (EPOLLIN | EPOLLRDNORM))) {
		int rc;

		FUNC5(&itv->serialize_lock);
		rc = FUNC4(id);
		FUNC6(&itv->serialize_lock);
		if (rc) {
			FUNC2("Could not start capture for %s (%d)\n",
					s->name, rc);
			return EPOLLERR;
		}
		FUNC0("Encoder poll started capture\n");
	}

	/* add stream's waitq to the poll list */
	FUNC1("Encoder poll\n");
	FUNC8(filp, &s->waitq, wait);
	if (FUNC10(&id->fh))
		res |= EPOLLPRI;
	else
		FUNC8(filp, &id->fh.wait, wait);

	if (s->q_full.length || s->q_io.length)
		return res | EPOLLIN | EPOLLRDNORM;
	if (eof)
		return res | EPOLLHUP;
	return res;
}