#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct gsc_frame {TYPE_3__ crop; int /*<<< orphan*/  f_height; int /*<<< orphan*/  f_width; } ;
struct gsc_dev {scalar_t__ regs; } ;
struct TYPE_5__ {TYPE_1__* rotate; } ;
struct gsc_ctx {scalar_t__ out_path; TYPE_2__ gsc_ctrls; struct gsc_frame d_frame; struct gsc_dev* gsc_dev; } ;
struct TYPE_4__ {int val; } ;

/* Variables and functions */
 scalar_t__ GSC_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSC_DSTIMG_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSC_DSTIMG_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSC_SCALED_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct gsc_ctx *ctx)
{
	struct gsc_dev *dev = ctx->gsc_dev;
	struct gsc_frame *frame = &ctx->d_frame;
	u32 cfg;

	/* Set output original size */
	if (ctx->out_path == GSC_DMA) {
		cfg = FUNC1(frame->crop.left);
		cfg |= FUNC2(frame->crop.top);
		FUNC6(cfg, dev->regs + GSC_DSTIMG_OFFSET);

		cfg = FUNC3(frame->f_width);
		cfg |= FUNC0(frame->f_height);
		FUNC6(cfg, dev->regs + GSC_DSTIMG_SIZE);
	}

	/* Set output scaled size */
	if (ctx->gsc_ctrls.rotate->val == 90 ||
	    ctx->gsc_ctrls.rotate->val == 270) {
		cfg = FUNC5(frame->crop.height);
		cfg |= FUNC4(frame->crop.width);
	} else {
		cfg = FUNC5(frame->crop.width);
		cfg |= FUNC4(frame->crop.height);
	}
	FUNC6(cfg, dev->regs + GSC_SCALED_SIZE);
}