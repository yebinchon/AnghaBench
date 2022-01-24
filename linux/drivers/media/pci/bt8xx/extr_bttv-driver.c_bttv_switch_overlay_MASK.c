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
struct bttv_fh {int /*<<< orphan*/  cap; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct bttv_buffer {TYPE_1__ vb; } ;
struct bttv {int loop_irq; int /*<<< orphan*/  s_lock; struct bttv_buffer* screen; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bttv*,struct bttv_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,struct bttv_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct bttv *btv, struct bttv_fh *fh,
		    struct bttv_buffer *new)
{
	struct bttv_buffer *old;
	unsigned long flags;

	FUNC2("switch_overlay: enter [new=%p]\n", new);
	if (new)
		new->vb.state = VIDEOBUF_DONE;
	FUNC5(&btv->s_lock,flags);
	old = btv->screen;
	btv->screen = new;
	btv->loop_irq |= 1;
	FUNC1(btv, 0x03);
	FUNC6(&btv->s_lock,flags);
	if (NULL != old) {
		FUNC2("switch_overlay: old=%p state is %d\n",
			old, old->vb.state);
		FUNC0(&fh->cap,btv, old);
		FUNC4(old);
	}
	if (NULL == new)
		FUNC3(btv,fh,RESOURCE_OVERLAY);
	FUNC2("switch_overlay: done\n");
	return 0;
}