#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  done; int /*<<< orphan*/  state; int /*<<< orphan*/  field_count; int /*<<< orphan*/  ts; } ;
struct bttv_buffer {TYPE_1__ vb; } ;
struct TYPE_4__ {struct bttv_buffer* top; scalar_t__ top_irq; } ;
struct bttv {int /*<<< orphan*/  s_lock; int /*<<< orphan*/  field_count; TYPE_2__ curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  RISC_SLOT_O_FIELD ; 
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bttv *btv)
{
	struct bttv_buffer *wakeup = btv->curr.top;

	if (NULL == wakeup)
		return;

	FUNC2(&btv->s_lock);
	btv->curr.top_irq = 0;
	btv->curr.top = NULL;
	FUNC0(btv, RISC_SLOT_O_FIELD, NULL, 0);

	wakeup->vb.ts = FUNC1();
	wakeup->vb.field_count = btv->field_count;
	wakeup->vb.state = VIDEOBUF_DONE;
	FUNC4(&wakeup->vb.done);
	FUNC3(&btv->s_lock);
}