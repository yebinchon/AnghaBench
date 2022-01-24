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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct mtk_mdp_ctx {int /*<<< orphan*/  m2m_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_mdp_ctx* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vb2_buffer *vb)
{
	struct mtk_mdp_ctx *ctx = FUNC2(vb->vb2_queue);

	FUNC1(ctx->m2m_ctx, FUNC0(vb));
}