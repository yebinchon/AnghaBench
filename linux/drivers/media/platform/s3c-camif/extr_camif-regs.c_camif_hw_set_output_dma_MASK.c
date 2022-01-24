#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  width; } ;
struct camif_dma_offset {int /*<<< orphan*/  line; int /*<<< orphan*/  initial; } ;
struct camif_frame {TYPE_2__ rect; struct camif_dma_offset dma_offset; } ;
struct camif_vp {int /*<<< orphan*/  offset; int /*<<< orphan*/  id; struct camif_fmt* out_fmt; struct camif_frame out_frame; struct camif_dev* camif; } ;
struct camif_fmt {int /*<<< orphan*/  ybpp; } ;
struct camif_dev {TYPE_1__* variant; } ;
struct TYPE_3__ {scalar_t__ ip_revision; } ;

/* Variables and functions */
 int CICTRL_BURST_MASK ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ S3C6410_CAMIF_IP_REV ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (struct camif_vp*) ; 
 int FUNC12 (struct camif_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct camif_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned int,unsigned int) ; 

void FUNC15(struct camif_vp *vp)
{
	struct camif_dev *camif = vp->camif;
	struct camif_frame *frame = &vp->out_frame;
	const struct camif_fmt *fmt = vp->out_fmt;
	unsigned int ymburst = 0, yrburst = 0;
	u32 cfg;

	FUNC11(vp);

	if (camif->variant->ip_revision == S3C6410_CAMIF_IP_REV) {
		struct camif_dma_offset *offset = &frame->dma_offset;
		/* Set the input dma offsets. */
		cfg = FUNC8(offset->initial);
		cfg |= FUNC9(offset->line);
		FUNC13(camif, FUNC7(vp->id), cfg);
		FUNC13(camif, FUNC5(vp->id), cfg);
		FUNC13(camif, FUNC6(vp->id), cfg);
	}

	/* Configure DMA burst values */
	FUNC10(frame->rect.width, fmt->ybpp, &ymburst, &yrburst);

	cfg = FUNC12(camif, FUNC4(vp->id, vp->offset));
	cfg &= ~CICTRL_BURST_MASK;

	cfg |= FUNC2(ymburst) | FUNC3(yrburst);
	cfg |= FUNC0(ymburst / 2) | FUNC1(yrburst / 2);

	FUNC13(camif, FUNC4(vp->id, vp->offset), cfg);

	FUNC14("ymburst: %u, yrburst: %u\n", ymburst, yrburst);
}