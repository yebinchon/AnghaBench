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
struct ivtv_stream {scalar_t__ type; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  decoding; struct ivtv_stream* streams; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ivtv_open_id*,scalar_t__) ; 
 int FUNC3 (struct ivtv*,int) ; 
 int FUNC4 (struct ivtv_stream*,int /*<<< orphan*/ ) ; 

int FUNC5(struct ivtv_open_id *id, int speed)
{
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];
	int rc;

	if (FUNC1(&itv->decoding) == 0) {
		if (FUNC2(id, s->type)) {
			/* someone else is using this stream already */
			FUNC0("start decode, stream already claimed\n");
			return -EBUSY;
		}
		rc = FUNC4(s, 0);
		if (rc < 0) {
			if (rc == -EAGAIN)
				rc = FUNC4(s, 0);
			if (rc < 0)
				return rc;
		}
	}
	if (s->type == IVTV_DEC_STREAM_TYPE_MPG)
		return FUNC3(itv, speed);
	return 0;
}