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
struct mtk_vcodec_dev {int /*<<< orphan*/  irqlock; struct mtk_vcodec_ctx* curr_ctx; } ;
struct mtk_vcodec_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

struct mtk_vcodec_ctx *FUNC2(struct mtk_vcodec_dev *dev)
{
	unsigned long flags;
	struct mtk_vcodec_ctx *ctx;

	FUNC0(&dev->irqlock, flags);
	ctx = dev->curr_ctx;
	FUNC1(&dev->irqlock, flags);
	return ctx;
}