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
struct bttv_buffer_set {TYPE_2__* bottom; TYPE_1__* top; } ;
struct bttv {int loop_irq; scalar_t__ new_input; int /*<<< orphan*/  s_lock; struct bttv_buffer_set curr; int /*<<< orphan*/  framedrop; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  bottom; } ;
struct TYPE_3__ {int /*<<< orphan*/  top; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_RISC_COUNT ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,struct bttv_buffer_set*) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,struct bttv_buffer_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*,struct bttv_buffer_set*,struct bttv_buffer_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bttv*,int /*<<< orphan*/ ) ; 
 scalar_t__ debug_latency ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bttv*,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(struct bttv *btv)
{
	struct bttv_buffer_set new;
	struct bttv_buffer_set old;
	dma_addr_t rc;

	FUNC7(&btv->s_lock);

	/* new buffer set */
	FUNC3(btv, &new);
	rc = FUNC0(BT848_RISC_COUNT);
	if ((btv->curr.top    && FUNC6(&btv->curr.top->top,       rc)) ||
	    (btv->curr.bottom && FUNC6(&btv->curr.bottom->bottom, rc))) {
		btv->framedrop++;
		if (debug_latency)
			FUNC2(btv, rc);
		FUNC8(&btv->s_lock);
		return;
	}

	/* switch over */
	old = btv->curr;
	btv->curr = new;
	btv->loop_irq &= ~1;
	FUNC1(btv, &new);
	FUNC5(btv, 0);

	/* switch input */
	if (UNSET != btv->new_input) {
		FUNC9(btv,btv->new_input);
		btv->new_input = UNSET;
	}

	/* wake up finished buffers */
	FUNC4(btv, &old, &new, VIDEOBUF_DONE);
	FUNC8(&btv->s_lock);
}