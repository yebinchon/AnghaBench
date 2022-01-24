#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_window {int clipcount; int /*<<< orphan*/  field; TYPE_9__ w; int /*<<< orphan*/  clips; } ;
struct v4l2_clip {int dummy; } ;
struct TYPE_17__ {int nclips; int setup_ok; int /*<<< orphan*/  field; TYPE_9__ w; struct v4l2_clip* clips; } ;
struct bttv_fh {TYPE_8__* ovfmt; TYPE_7__ ov; int /*<<< orphan*/  do_crop; } ;
struct bttv_buffer {int /*<<< orphan*/  crop; } ;
struct TYPE_13__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_14__ {int /*<<< orphan*/  field; TYPE_3__ w; } ;
struct TYPE_15__ {TYPE_4__ ov; } ;
struct TYPE_11__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_12__ {TYPE_1__ fmt; int /*<<< orphan*/ * base; } ;
struct bttv {TYPE_6__* crop; TYPE_5__ init; TYPE_2__ fbuf; } ;
struct TYPE_18__ {int flags; int depth; } ;
struct TYPE_16__ {int /*<<< orphan*/  rect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FORMAT_FLAGS_PACKED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,struct v4l2_clip*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*,struct v4l2_clip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_clip*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*,TYPE_7__*,TYPE_8__*,struct bttv_buffer*) ; 
 int FUNC5 (struct bttv*,struct bttv_fh*,struct bttv_buffer*) ; 
 scalar_t__ FUNC6 (struct bttv_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct v4l2_clip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_clip*) ; 
 struct v4l2_clip* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct bttv_fh*,struct v4l2_window*,int,int) ; 
 struct bttv_buffer* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct bttv_fh *fh, struct bttv *btv,
			struct v4l2_window *win, int fixup)
{
	struct v4l2_clip *clips = NULL;
	int n,size,retval = 0;

	if (NULL == fh->ovfmt)
		return -EINVAL;
	if (!(fh->ovfmt->flags & FORMAT_FLAGS_PACKED))
		return -EINVAL;
	retval = FUNC10(fh, win,
			       /* adjust_size */ fixup,
			       /* adjust_crop */ fixup);
	if (0 != retval)
		return retval;

	/* copy clips  --  luckily v4l1 + v4l2 are binary
	   compatible here ...*/
	n = win->clipcount;
	size = sizeof(*clips)*(n+4);
	clips = FUNC9(size,GFP_KERNEL);
	if (NULL == clips)
		return -ENOMEM;
	if (n > 0) {
		if (FUNC7(clips,win->clips,sizeof(struct v4l2_clip)*n)) {
			FUNC8(clips);
			return -EFAULT;
		}
	}

	/* clip against screen */
	if (NULL != btv->fbuf.base)
		n = FUNC2(btv->fbuf.fmt.width, btv->fbuf.fmt.height,
				      &win->w, clips, n);
	FUNC3(clips,n);

	/* 4-byte alignments */
	switch (fh->ovfmt->depth) {
	case 8:
	case 24:
		FUNC1(&win->w, clips, n, 3);
		break;
	case 16:
		FUNC1(&win->w, clips, n, 1);
		break;
	case 32:
		/* no alignment fixups needed */
		break;
	default:
		FUNC0();
	}

	FUNC8(fh->ov.clips);
	fh->ov.clips    = clips;
	fh->ov.nclips   = n;

	fh->ov.w        = win->w;
	fh->ov.field    = win->field;
	fh->ov.setup_ok = 1;

	btv->init.ov.w.width   = win->w.width;
	btv->init.ov.w.height  = win->w.height;
	btv->init.ov.field     = win->field;

	/* update overlay if needed */
	retval = 0;
	if (FUNC6(fh, RESOURCE_OVERLAY)) {
		struct bttv_buffer *new;

		new = FUNC11(sizeof(*new));
		new->crop = btv->crop[!!fh->do_crop].rect;
		FUNC4(btv, &fh->ov, fh->ovfmt, new);
		retval = FUNC5(btv,fh,new);
	}
	return retval;
}