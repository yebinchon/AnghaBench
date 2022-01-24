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
struct rockchip_rga {struct rga_ctx* curr; } ;
struct rga_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGA_CMD_CTRL ; 
 int /*<<< orphan*/  RGA_INT ; 
 int /*<<< orphan*/  RGA_SYS_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rga_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_rga*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct rockchip_rga *rga)
{
	struct rga_ctx *ctx = rga->curr;

	FUNC0(ctx);

	FUNC1(rga, RGA_SYS_CTRL, 0x00);

	FUNC1(rga, RGA_SYS_CTRL, 0x22);

	FUNC1(rga, RGA_INT, 0x600);

	FUNC1(rga, RGA_CMD_CTRL, 0x1);
}