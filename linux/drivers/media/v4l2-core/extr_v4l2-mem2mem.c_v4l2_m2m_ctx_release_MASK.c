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
struct TYPE_4__ {int /*<<< orphan*/  q; } ;
struct TYPE_3__ {int /*<<< orphan*/  q; } ;
struct v4l2_m2m_ctx {TYPE_2__ out_q_ctx; TYPE_1__ cap_q_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_m2m_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_m2m_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct v4l2_m2m_ctx *m2m_ctx)
{
	/* wait until the current context is dequeued from job_queue */
	FUNC1(m2m_ctx);

	FUNC2(&m2m_ctx->cap_q_ctx.q);
	FUNC2(&m2m_ctx->out_q_ctx.q);

	FUNC0(m2m_ctx);
}