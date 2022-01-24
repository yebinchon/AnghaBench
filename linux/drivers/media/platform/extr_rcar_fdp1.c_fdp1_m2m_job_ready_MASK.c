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
struct TYPE_3__ {int /*<<< orphan*/  field; } ;
struct fdp1_q_data {TYPE_1__ format; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fdp1_ctx {int /*<<< orphan*/  fdp1; TYPE_2__ fh; struct fdp1_q_data out_q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *priv)
{
	struct fdp1_ctx *ctx = priv;
	struct fdp1_q_data *src_q_data = &ctx->out_q;
	int srcbufs = 1;
	int dstbufs = 1;

	FUNC1(ctx->fdp1, "+ Src: %d : Dst: %d\n",
		FUNC3(ctx->fh.m2m_ctx),
		FUNC2(ctx->fh.m2m_ctx));

	/* One output buffer is required for each field */
	if (FUNC0(src_q_data->format.field))
		dstbufs = 2;

	if (FUNC3(ctx->fh.m2m_ctx) < srcbufs
	    || FUNC2(ctx->fh.m2m_ctx) < dstbufs) {
		FUNC1(ctx->fdp1, "Not enough buffers available\n");
		return 0;
	}

	return 1;
}