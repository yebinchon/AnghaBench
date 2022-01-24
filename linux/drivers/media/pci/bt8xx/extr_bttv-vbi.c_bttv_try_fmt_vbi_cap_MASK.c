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
struct TYPE_2__ {int /*<<< orphan*/  vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct bttv_tvnorm {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {size_t tvnorm; int /*<<< orphan*/  lock; int /*<<< orphan*/  crop_start; } ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 struct bttv_tvnorm* bttv_tvnorms ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct bttv_tvnorm const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct file *file, void *f, struct v4l2_format *frt)
{
	struct bttv_fh *fh = f;
	struct bttv *btv = fh->btv;
	const struct bttv_tvnorm *tvnorm;
	__s32 crop_start;

	FUNC0(&btv->lock);

	tvnorm = &bttv_tvnorms[btv->tvnorm];
	crop_start = btv->crop_start;

	FUNC1(&btv->lock);

	return FUNC2(&frt->fmt.vbi, tvnorm, crop_start);
}