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
struct coda_dev {TYPE_1__* devtype; } ;
struct coda_ctx {scalar_t__ idx; int /*<<< orphan*/  bit_stream_param; struct coda_dev* dev; } ;
struct TYPE_2__ {scalar_t__ product; } ;

/* Variables and functions */
 scalar_t__ CODA_960 ; 
 int /*<<< orphan*/  CODA_BIT_STREAM_END_FLAG ; 
 int /*<<< orphan*/  CODA_REG_BIT_BIT_STREAM_PARAM ; 
 int /*<<< orphan*/  CODA_REG_BIT_RUN_INDEX ; 
 scalar_t__ FUNC0 (struct coda_dev*) ; 
 scalar_t__ FUNC1 (struct coda_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coda_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct coda_ctx *ctx)
{
	struct coda_dev *dev = ctx->dev;

	ctx->bit_stream_param |= CODA_BIT_STREAM_END_FLAG;

	/* If this context is currently running, update the hardware flag */
	if ((dev->devtype->product == CODA_960) &&
	    FUNC0(dev) &&
	    (ctx->idx == FUNC1(dev, CODA_REG_BIT_RUN_INDEX))) {
		FUNC2(dev, ctx->bit_stream_param,
			   CODA_REG_BIT_BIT_STREAM_PARAM);
	}
}