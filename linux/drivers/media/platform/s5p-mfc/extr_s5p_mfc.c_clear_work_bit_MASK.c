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
struct s5p_mfc_dev {int /*<<< orphan*/  condlock; int /*<<< orphan*/  ctx_work_bits; } ;
struct s5p_mfc_ctx {int /*<<< orphan*/  num; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;

	FUNC1(&dev->condlock);
	FUNC0(ctx->num, &dev->ctx_work_bits);
	FUNC2(&dev->condlock);
}