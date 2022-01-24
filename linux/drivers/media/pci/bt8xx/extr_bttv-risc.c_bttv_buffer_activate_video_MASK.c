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
struct bttv_buffer_set {TYPE_2__* bottom; int /*<<< orphan*/  frame_irq; TYPE_2__* top; int /*<<< orphan*/  top_irq; } ;
struct bttv {int dummy; } ;
struct TYPE_6__ {scalar_t__ next; } ;
struct TYPE_4__ {TYPE_3__ queue; void* state; } ;
struct TYPE_5__ {int btformat; int btswap; int /*<<< orphan*/  bottom; int /*<<< orphan*/  geo; TYPE_1__ vb; int /*<<< orphan*/  top; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_COLOR_CTL ; 
 int /*<<< orphan*/  BT848_COLOR_FMT ; 
 int /*<<< orphan*/  RISC_SLOT_E_FIELD ; 
 int /*<<< orphan*/  RISC_SLOT_O_FIELD ; 
 void* VIDEOBUF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

int
FUNC4(struct bttv *btv,
			   struct bttv_buffer_set *set)
{
	/* video capture */
	if (NULL != set->top  &&  NULL != set->bottom) {
		if (set->top == set->bottom) {
			set->top->vb.state    = VIDEOBUF_ACTIVE;
			if (set->top->vb.queue.next)
				FUNC3(&set->top->vb.queue);
		} else {
			set->top->vb.state    = VIDEOBUF_ACTIVE;
			set->bottom->vb.state = VIDEOBUF_ACTIVE;
			if (set->top->vb.queue.next)
				FUNC3(&set->top->vb.queue);
			if (set->bottom->vb.queue.next)
				FUNC3(&set->bottom->vb.queue);
		}
		FUNC1(btv, &set->top->geo, 1);
		FUNC1(btv, &set->bottom->geo,0);
		FUNC2(btv, RISC_SLOT_O_FIELD, &set->top->top,
			       set->top_irq);
		FUNC2(btv, RISC_SLOT_E_FIELD, &set->bottom->bottom,
			       set->frame_irq);
		FUNC0((set->top->btformat & 0xf0) | (set->bottom->btformat & 0x0f),
		      ~0xff, BT848_COLOR_FMT);
		FUNC0((set->top->btswap & 0x0a) | (set->bottom->btswap & 0x05),
		      ~0x0f, BT848_COLOR_CTL);
	} else if (NULL != set->top) {
		set->top->vb.state  = VIDEOBUF_ACTIVE;
		if (set->top->vb.queue.next)
			FUNC3(&set->top->vb.queue);
		FUNC1(btv, &set->top->geo,1);
		FUNC1(btv, &set->top->geo,0);
		FUNC2(btv, RISC_SLOT_O_FIELD, &set->top->top,
			       set->frame_irq);
		FUNC2(btv, RISC_SLOT_E_FIELD, NULL,           0);
		FUNC0(set->top->btformat & 0xff, ~0xff, BT848_COLOR_FMT);
		FUNC0(set->top->btswap & 0x0f,   ~0x0f, BT848_COLOR_CTL);
	} else if (NULL != set->bottom) {
		set->bottom->vb.state = VIDEOBUF_ACTIVE;
		if (set->bottom->vb.queue.next)
			FUNC3(&set->bottom->vb.queue);
		FUNC1(btv, &set->bottom->geo,1);
		FUNC1(btv, &set->bottom->geo,0);
		FUNC2(btv, RISC_SLOT_O_FIELD, NULL, 0);
		FUNC2(btv, RISC_SLOT_E_FIELD, &set->bottom->bottom,
			       set->frame_irq);
		FUNC0(set->bottom->btformat & 0xff, ~0xff, BT848_COLOR_FMT);
		FUNC0(set->bottom->btswap & 0x0f,   ~0x0f, BT848_COLOR_CTL);
	} else {
		FUNC2(btv, RISC_SLOT_O_FIELD, NULL, 0);
		FUNC2(btv, RISC_SLOT_E_FIELD, NULL, 0);
	}
	return 0;
}