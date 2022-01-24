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
struct timer_list {int dummy; } ;
struct reorder_tmr_cnxt {int timer_is_set; TYPE_2__* ptr; TYPE_1__* priv; } ;
struct TYPE_4__ {int start_win; } ;
struct TYPE_3__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int MAX_TID_VALUE ; 
 struct reorder_tmr_cnxt* ctx ; 
 struct reorder_tmr_cnxt* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC2 (struct reorder_tmr_cnxt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void
FUNC4(struct timer_list *t)
{
	struct reorder_tmr_cnxt *ctx =
		FUNC0(ctx, t, timer);
	int start_win, seq_num;

	ctx->timer_is_set = false;
	seq_num = FUNC2(ctx);

	if (seq_num < 0)
		return;

	FUNC3(ctx->priv->adapter, INFO, "info: flush data %d\n", seq_num);
	start_win = (ctx->ptr->start_win + seq_num + 1) & (MAX_TID_VALUE - 1);
	FUNC1(ctx->priv, ctx->ptr,
						 start_win);
}