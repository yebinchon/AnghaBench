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
struct timer_list {int dummy; } ;
struct bttv_ir {int /*<<< orphan*/  polling; int /*<<< orphan*/  timer; struct bttv* btv; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct bttv {TYPE_1__ c; } ;

/* Variables and functions */
 scalar_t__ BTTV_BOARD_ENLTV_FM_2 ; 
 struct bttv_ir* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct bttv_ir* ir ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct bttv_ir *ir = FUNC0(ir, t, timer);
	struct bttv *btv = ir->btv;

	if (btv->c.type == BTTV_BOARD_ENLTV_FM_2)
		FUNC1(btv);
	else
		FUNC2(btv);
	FUNC3(&ir->timer, jiffies + FUNC4(ir->polling));
}