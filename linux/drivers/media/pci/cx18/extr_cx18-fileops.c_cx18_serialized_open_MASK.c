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
struct file {int /*<<< orphan*/ * private_data; } ;
struct cx18_stream {scalar_t__ type; int /*<<< orphan*/  video_dev; int /*<<< orphan*/  name; struct cx18* cx; } ;
struct cx18_open_id {scalar_t__ type; int /*<<< orphan*/  fh; scalar_t__ open_id; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  ana_capturing; int /*<<< orphan*/  open_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_RAD ; 
 int /*<<< orphan*/  CX18_F_I_RADIO_USER ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18_open_id*) ; 
 struct cx18_open_id* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct file*) ; 

__attribute__((used)) static int FUNC16(struct cx18_stream *s, struct file *filp)
{
	struct cx18 *cx = s->cx;
	struct cx18_open_id *item;

	FUNC0("open %s\n", s->name);

	/* Allocate memory */
	item = FUNC8(sizeof(struct cx18_open_id), GFP_KERNEL);
	if (NULL == item) {
		FUNC1("nomem on v4l2 open\n");
		return -ENOMEM;
	}
	FUNC14(&item->fh, &s->video_dev);

	item->cx = cx;
	item->type = s->type;

	item->open_id = cx->open_id++;
	filp->private_data = &item->fh;
	FUNC11(&item->fh);

	if (item->type == CX18_ENC_STREAM_TYPE_RAD &&
			FUNC15(filp)) {
		if (!FUNC10(CX18_F_I_RADIO_USER, &cx->i_flags)) {
			if (FUNC2(&cx->ana_capturing) > 0) {
				/* switching to radio while capture is
				   in progress is not polite */
				FUNC12(&item->fh);
				FUNC13(&item->fh);
				FUNC7(item);
				return -EBUSY;
			}
		}

		/* Mark that the radio is being used. */
		FUNC9(CX18_F_I_RADIO_USER, &cx->i_flags);
		/* We have the radio */
		FUNC5(cx);
		/* Switch tuner to radio */
		FUNC4(cx, tuner, s_radio);
		/* Select the correct audio input (i.e. radio tuner) */
		FUNC3(cx);
		/* Done! Unmute and continue. */
		FUNC6(cx);
	}
	return 0;
}