#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int dma; } ;
struct saa7134_dmaqueue {int /*<<< orphan*/  timeout; TYPE_4__ pt; } ;
struct saa7134_dev {unsigned long width; unsigned long height; int /*<<< orphan*/  field; TYPE_5__* fmt; } ;
struct TYPE_7__ {TYPE_1__* vb2_queue; } ;
struct TYPE_8__ {TYPE_2__ vb2_buf; } ;
struct saa7134_buf {scalar_t__ top_seen; TYPE_3__ vb2; } ;
struct TYPE_10__ {int depth; unsigned long hshift; unsigned long vshift; scalar_t__ uvswap; scalar_t__ planar; scalar_t__ wswap; scalar_t__ bswap; int /*<<< orphan*/  pm; scalar_t__ yuv; } ;
struct TYPE_6__ {struct saa7134_dmaqueue* drv_priv; } ;

/* Variables and functions */
 scalar_t__ BUFFER_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAA7134_OFMT_VIDEO_A ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long SAA7134_RS_CONTROL_BSWAP ; 
 int SAA7134_RS_CONTROL_BURST_16 ; 
 int SAA7134_RS_CONTROL_ME ; 
 unsigned long SAA7134_RS_CONTROL_WSWAP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TASK_A ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC7 (struct saa7134_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct saa7134_dev*,int /*<<< orphan*/ ,unsigned long,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int FUNC14(struct saa7134_dev *dev,
			   struct saa7134_buf *buf,
			   struct saa7134_buf *next)
{
	struct saa7134_dmaqueue *dmaq = buf->vb2.vb2_buf.vb2_queue->drv_priv;
	unsigned long base,control,bpl;
	unsigned long bpl_uv,lines_uv,base2,base3,tmp; /* planar */

	FUNC13("buffer_activate buf=%p\n", buf);
	buf->top_seen = 0;

	FUNC12(dev, TASK_A, dev->width, dev->height,
		 FUNC5(dev->field));
	if (dev->fmt->yuv)
		FUNC9(FUNC0(TASK_A), 0x3f, 0x03);
	else
		FUNC9(FUNC0(TASK_A), 0x3f, 0x01);
	FUNC10(SAA7134_OFMT_VIDEO_A, dev->fmt->pm);

	/* DMA: setup channel 0 (= Video Task A0) */
	base  = FUNC7(buf);
	if (dev->fmt->planar)
		bpl = dev->width;
	else
		bpl = (dev->width * dev->fmt->depth) / 8;
	control = SAA7134_RS_CONTROL_BURST_16 |
		SAA7134_RS_CONTROL_ME |
		(dmaq->pt.dma >> 12);
	if (dev->fmt->bswap)
		control |= SAA7134_RS_CONTROL_BSWAP;
	if (dev->fmt->wswap)
		control |= SAA7134_RS_CONTROL_WSWAP;
	if (FUNC5(dev->field)) {
		/* interlaced */
		FUNC11(FUNC1(0),base);
		FUNC11(FUNC2(0),base+bpl);
		FUNC11(FUNC4(0),bpl*2);
	} else {
		/* non-interlaced */
		FUNC11(FUNC1(0),base);
		FUNC11(FUNC2(0),base);
		FUNC11(FUNC4(0),bpl);
	}
	FUNC11(FUNC3(0),control);

	if (dev->fmt->planar) {
		/* DMA: setup channel 4+5 (= planar task A) */
		bpl_uv   = bpl >> dev->fmt->hshift;
		lines_uv = dev->height >> dev->fmt->vshift;
		base2    = base + bpl * dev->height;
		base3    = base2 + bpl_uv * lines_uv;
		if (dev->fmt->uvswap)
			tmp = base2, base2 = base3, base3 = tmp;
		FUNC13("uv: bpl=%ld lines=%ld base2/3=%ld/%ld\n",
			bpl_uv,lines_uv,base2,base3);
		if (FUNC5(dev->field)) {
			/* interlaced */
			FUNC11(FUNC1(4),base2);
			FUNC11(FUNC2(4),base2+bpl_uv);
			FUNC11(FUNC4(4),bpl_uv*2);
			FUNC11(FUNC1(5),base3);
			FUNC11(FUNC2(5),base3+bpl_uv);
			FUNC11(FUNC4(5),bpl_uv*2);
		} else {
			/* non-interlaced */
			FUNC11(FUNC1(4),base2);
			FUNC11(FUNC2(4),base2);
			FUNC11(FUNC4(4),bpl_uv);
			FUNC11(FUNC1(5),base3);
			FUNC11(FUNC2(5),base3);
			FUNC11(FUNC4(5),bpl_uv);
		}
		FUNC11(FUNC3(4),control);
		FUNC11(FUNC3(5),control);
	}

	/* start DMA */
	FUNC8(dev);
	FUNC6(&dmaq->timeout, jiffies + BUFFER_TIMEOUT);
	return 0;
}