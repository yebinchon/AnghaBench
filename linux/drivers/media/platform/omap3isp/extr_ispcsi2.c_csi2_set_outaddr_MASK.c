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
typedef  void* u32 ;
struct isp_device {int dummy; } ;
struct isp_csi2_device {int /*<<< orphan*/  regs1; struct isp_csi2_ctx_cfg* contexts; struct isp_device* isp; } ;
struct isp_csi2_ctx_cfg {int /*<<< orphan*/  ctxnum; void* pong_addr; void* ping_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct isp_csi2_device *csi2, u32 addr)
{
	struct isp_device *isp = csi2->isp;
	struct isp_csi2_ctx_cfg *ctx = &csi2->contexts[0];

	ctx->ping_addr = addr;
	ctx->pong_addr = addr;
	FUNC2(isp, ctx->ping_addr,
		       csi2->regs1, FUNC0(ctx->ctxnum));
	FUNC2(isp, ctx->pong_addr,
		       csi2->regs1, FUNC1(ctx->ctxnum));
}