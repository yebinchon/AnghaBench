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
struct mtk_vcodec_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct mtk_vcodec_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC4(struct mtk_vcodec_ctx *ctx)
{
	bool res_chg;
	int ret = 0;

	ret = FUNC3(ctx, NULL, NULL, &res_chg);
	if (ret)
		FUNC2("DecodeFinal failed, ret=%d", ret);

	FUNC0(ctx);
	FUNC1(ctx);
}