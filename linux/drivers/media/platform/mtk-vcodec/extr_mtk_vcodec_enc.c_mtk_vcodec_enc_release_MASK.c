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
struct mtk_vcodec_ctx {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_STATE_FREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct mtk_vcodec_ctx*) ; 

void FUNC2(struct mtk_vcodec_ctx *ctx)
{
	int ret = FUNC1(ctx);

	if (ret)
		FUNC0("venc_if_deinit failed=%d", ret);

	ctx->state = MTK_STATE_FREE;
}