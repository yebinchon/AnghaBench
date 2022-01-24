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
struct mtk_mdp_ctx {int /*<<< orphan*/  m2m_ctx; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC3(struct mtk_mdp_ctx *ctx,
				    enum v4l2_buf_type type)
{
	if (FUNC0(type))
		return FUNC2(ctx->m2m_ctx);
	else
		return FUNC1(ctx->m2m_ctx);
}