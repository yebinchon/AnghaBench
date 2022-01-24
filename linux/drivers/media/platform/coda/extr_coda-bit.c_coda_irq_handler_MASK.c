#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct coda_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; } ;
struct coda_ctx {int /*<<< orphan*/  completion; int /*<<< orphan*/  dev; scalar_t__ aborting; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_REG_BIT_INT_CLEAR ; 
 int /*<<< orphan*/  CODA_REG_BIT_INT_CLEAR_SET ; 
 int /*<<< orphan*/  CODA_REG_BIT_INT_REASON ; 
 int /*<<< orphan*/  CODA_REG_BIT_INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,struct coda_ctx*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coda_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct coda_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct coda_ctx* FUNC7 (int /*<<< orphan*/ ) ; 

irqreturn_t FUNC8(int irq, void *data)
{
	struct coda_dev *dev = data;
	struct coda_ctx *ctx;

	/* read status register to attend the IRQ */
	FUNC2(dev, CODA_REG_BIT_INT_STATUS);
	FUNC3(dev, 0, CODA_REG_BIT_INT_REASON);
	FUNC3(dev, CODA_REG_BIT_INT_CLEAR_SET,
		      CODA_REG_BIT_INT_CLEAR);

	ctx = FUNC7(dev->m2m_dev);
	if (ctx == NULL) {
		FUNC6(&dev->v4l2_dev,
			 "Instance released before the end of transaction\n");
		return IRQ_HANDLED;
	}

	FUNC5(ctx);

	if (ctx->aborting) {
		FUNC0(1, ctx, "task has been aborted\n");
	}

	if (FUNC1(ctx->dev)) {
		FUNC0(1, ctx, "coda is still busy!!!!\n");
		return IRQ_NONE;
	}

	FUNC4(&ctx->completion);

	return IRQ_HANDLED;
}