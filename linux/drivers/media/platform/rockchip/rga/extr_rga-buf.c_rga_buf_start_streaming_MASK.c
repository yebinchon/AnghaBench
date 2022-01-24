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
struct vb2_queue {int dummy; } ;
struct rockchip_rga {int /*<<< orphan*/  dev; } ;
struct rga_ctx {struct rockchip_rga* rga; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_queue*,int /*<<< orphan*/ ) ; 
 struct rga_ctx* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *q, unsigned int count)
{
	struct rga_ctx *ctx = FUNC2(q);
	struct rockchip_rga *rga = ctx->rga;
	int ret;

	ret = FUNC0(rga->dev);
	if (ret < 0) {
		FUNC1(q, VB2_BUF_STATE_QUEUED);
		return ret;
	}

	return 0;
}