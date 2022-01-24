#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {struct bttv_fh* private_data; } ;
struct TYPE_5__ {struct bttv_fh* read_buf; } ;
struct bttv_fh {int /*<<< orphan*/  fh; TYPE_1__ vbi; TYPE_1__ cap; struct bttv* btv; } ;
struct bttv {int /*<<< orphan*/  mute; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  RESOURCE_VBI ; 
 int /*<<< orphan*/  RESOURCE_VIDEO_READ ; 
 int /*<<< orphan*/  RESOURCE_VIDEO_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,struct bttv_fh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct bttv_fh*) ; 
 scalar_t__ FUNC4 (struct bttv_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bttv*,struct bttv_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bttv_fh*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct file *file)
{
	struct bttv_fh *fh = file->private_data;
	struct bttv *btv = fh->btv;

	/* turn off overlay */
	if (FUNC4(fh, RESOURCE_OVERLAY))
		FUNC2(btv,fh,NULL);

	/* stop video capture */
	if (FUNC4(fh, RESOURCE_VIDEO_STREAM)) {
		FUNC11(&fh->cap);
		FUNC5(btv,fh,RESOURCE_VIDEO_STREAM);
	}
	if (fh->cap.read_buf) {
		FUNC3(&fh->cap,fh->cap.read_buf);
		FUNC6(fh->cap.read_buf);
	}
	if (FUNC4(fh, RESOURCE_VIDEO_READ)) {
		FUNC5(btv, fh, RESOURCE_VIDEO_READ);
	}

	/* stop vbi capture */
	if (FUNC4(fh, RESOURCE_VBI)) {
		FUNC10(&fh->vbi);
		FUNC5(btv,fh,RESOURCE_VBI);
	}

	/* free stuff */

	FUNC9(&fh->cap);
	FUNC9(&fh->vbi);
	file->private_data = NULL;

	btv->users--;
	FUNC1(btv);

	if (!btv->users)
		FUNC0(btv, btv->mute);

	FUNC7(&fh->fh);
	FUNC8(&fh->fh);
	FUNC6(fh);
	return 0;
}