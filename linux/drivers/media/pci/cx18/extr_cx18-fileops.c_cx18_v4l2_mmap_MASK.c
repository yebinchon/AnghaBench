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
struct vm_area_struct {int dummy; } ;
struct file {struct cx18_open_id* private_data; } ;
struct cx18_stream {scalar_t__ vb_type; int /*<<< orphan*/  vbuf_q; int /*<<< orphan*/  name; int /*<<< orphan*/  s_flags; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; struct cx18_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 size_t CX18_ENC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  CX18_F_S_STREAMOFF ; 
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC2 (struct cx18_open_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 

int FUNC7(struct file *file, struct vm_area_struct *vma)
{
	struct cx18_open_id *id = file->private_data;
	struct cx18 *cx = id->cx;
	struct cx18_stream *s = &cx->streams[id->type];
	int eof = FUNC5(CX18_F_S_STREAMOFF, &s->s_flags);

	if ((s->vb_type == V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
		(id->type == CX18_ENC_STREAM_TYPE_YUV)) {

		/* Start a capture if there is none */
		if (!eof && !FUNC5(CX18_F_S_STREAMING, &s->s_flags)) {
			int rc;

			FUNC3(&cx->serialize_lock);
			rc = FUNC2(id);
			FUNC4(&cx->serialize_lock);
			if (rc) {
				FUNC1(
					"Could not start capture for %s (%d)\n",
					s->name, rc);
				return -EINVAL;
			}
			FUNC0("Encoder mmap started capture\n");
		}

		return FUNC6(&s->vbuf_q, vma);
	}

	return -EINVAL;
}