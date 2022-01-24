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
struct TYPE_4__ {int reqbufs_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_dev; } ;
struct fimc_dev {int /*<<< orphan*/  slock; TYPE_2__ vid_cap; int /*<<< orphan*/  state; int /*<<< orphan*/  irq_queue; TYPE_1__ m2m; } ;
struct fimc_ctx {int state; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FIMC_CTX_SHUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ST_CAPT_JPEG ; 
 int /*<<< orphan*/  ST_CAPT_PEND ; 
 int /*<<< orphan*/  ST_M2M_PEND ; 
 int /*<<< orphan*/  ST_M2M_SUSPENDED ; 
 int /*<<< orphan*/  ST_M2M_SUSPENDING ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fimc_ctx* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *priv)
{
	struct fimc_dev *fimc = priv;
	struct fimc_ctx *ctx;

	FUNC1(fimc);

	FUNC4(&fimc->slock);

	if (FUNC6(ST_M2M_PEND, &fimc->state)) {
		if (FUNC6(ST_M2M_SUSPENDING, &fimc->state)) {
			FUNC3(ST_M2M_SUSPENDED, &fimc->state);
			FUNC9(&fimc->irq_queue);
			goto out;
		}
		ctx = FUNC8(fimc->m2m.m2m_dev);
		if (ctx != NULL) {
			FUNC5(&fimc->slock);
			FUNC2(ctx, VB2_BUF_STATE_DONE);

			if (ctx->state & FIMC_CTX_SHUT) {
				ctx->state &= ~FIMC_CTX_SHUT;
				FUNC9(&fimc->irq_queue);
			}
			return IRQ_HANDLED;
		}
	} else if (FUNC7(ST_CAPT_PEND, &fimc->state)) {
		int last_buf = FUNC7(ST_CAPT_JPEG, &fimc->state) &&
				fimc->vid_cap.reqbufs_count == 1;
		FUNC0(fimc, !last_buf);
	}
out:
	FUNC5(&fimc->slock);
	return IRQ_HANDLED;
}