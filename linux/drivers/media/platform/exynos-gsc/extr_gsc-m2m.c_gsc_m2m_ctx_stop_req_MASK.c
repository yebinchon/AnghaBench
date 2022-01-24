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
struct TYPE_2__ {int /*<<< orphan*/  m2m_dev; } ;
struct gsc_dev {int /*<<< orphan*/  irq_queue; TYPE_1__ m2m; } ;
struct gsc_ctx {struct gsc_dev* gsc_dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GSC_CTX_STOP_REQ ; 
 int /*<<< orphan*/  GSC_SHUTDOWN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsc_dev*) ; 
 struct gsc_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gsc_ctx *ctx)
{
	struct gsc_ctx *curr_ctx;
	struct gsc_dev *gsc = ctx->gsc_dev;
	int ret;

	curr_ctx = FUNC3(gsc->m2m.m2m_dev);
	if (!FUNC2(gsc) || (curr_ctx != ctx))
		return 0;

	FUNC1(GSC_CTX_STOP_REQ, ctx);
	ret = FUNC4(gsc->irq_queue,
			!FUNC0(GSC_CTX_STOP_REQ, ctx),
			GSC_SHUTDOWN_TIMEOUT);

	return ret == 0 ? -ETIMEDOUT : ret;
}