#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct gsc_frame {TYPE_1__ crop; int /*<<< orphan*/  f_height; int /*<<< orphan*/  f_width; } ;
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {struct gsc_frame s_frame; struct gsc_dev* gsc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSC_CROPPED_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSC_SRCIMG_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSC_SRCIMG_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct gsc_ctx *ctx)
{
	struct gsc_dev *dev = ctx->gsc_dev;
	struct gsc_frame *frame = &ctx->s_frame;
	u32 cfg;

	/* Set input pixel offset */
	cfg = FUNC3(frame->crop.left);
	cfg |= FUNC4(frame->crop.top);
	FUNC6(cfg, dev->regs + GSC_SRCIMG_OFFSET);

	/* Set input original size */
	cfg = FUNC5(frame->f_width);
	cfg |= FUNC2(frame->f_height);
	FUNC6(cfg, dev->regs + GSC_SRCIMG_SIZE);

	/* Set input cropped size */
	cfg = FUNC1(frame->crop.width);
	cfg |= FUNC0(frame->crop.height);
	FUNC6(cfg, dev->regs + GSC_CROPPED_SIZE);
}