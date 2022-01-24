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
struct coda_q_data {int sizeimage; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; scalar_t__ vaddr; int /*<<< orphan*/  paddr; } ;
struct coda_ctx {TYPE_2__ bitstream; int /*<<< orphan*/  bitstream_fifo; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct coda_ctx *ctx,
				       struct coda_q_data *q_data)
{
	if (ctx->bitstream.vaddr)
		return 0;

	ctx->bitstream.size = FUNC2(q_data->sizeimage * 2);
	ctx->bitstream.vaddr = FUNC0(ctx->dev->dev, ctx->bitstream.size,
					    &ctx->bitstream.paddr, GFP_KERNEL);
	if (!ctx->bitstream.vaddr) {
		FUNC3(&ctx->dev->v4l2_dev,
			 "failed to allocate bitstream ringbuffer");
		return -ENOMEM;
	}
	FUNC1(&ctx->bitstream_fifo,
		   ctx->bitstream.vaddr, ctx->bitstream.size);

	return 0;
}