#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dma; } ;
struct saa7134_dmaqueue {int /*<<< orphan*/  timeout; TYPE_4__ pt; } ;
struct saa7134_dev {unsigned long vbi_hlen; unsigned long vbi_vlen; } ;
struct TYPE_6__ {TYPE_1__* vb2_queue; } ;
struct TYPE_7__ {TYPE_2__ vb2_buf; } ;
struct saa7134_buf {scalar_t__ top_seen; TYPE_3__ vb2; } ;
struct TYPE_5__ {struct saa7134_dmaqueue* drv_priv; } ;

/* Variables and functions */
 scalar_t__ BUFFER_TIMEOUT ; 
 int /*<<< orphan*/  SAA7134_OFMT_DATA_A ; 
 int /*<<< orphan*/  SAA7134_OFMT_DATA_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SAA7134_RS_CONTROL_BURST_16 ; 
 int SAA7134_RS_CONTROL_ME ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  TASK_A ; 
 int /*<<< orphan*/  TASK_B ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC5 (struct saa7134_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7134_dev*,struct saa7134_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct saa7134_buf*) ; 

__attribute__((used)) static int FUNC11(struct saa7134_dev *dev,
			   struct saa7134_buf *buf,
			   struct saa7134_buf *next)
{
	struct saa7134_dmaqueue *dmaq = buf->vb2.vb2_buf.vb2_queue->drv_priv;
	unsigned long control, base;

	FUNC10("buffer_activate [%p]\n", buf);
	buf->top_seen = 0;

	FUNC9(dev, buf, TASK_A);
	FUNC9(dev, buf, TASK_B);
	FUNC7(SAA7134_OFMT_DATA_A, 0x06);
	FUNC7(SAA7134_OFMT_DATA_B, 0x06);

	/* DMA: setup channel 2+3 (= VBI Task A+B) */
	base    = FUNC5(buf);
	control = SAA7134_RS_CONTROL_BURST_16 |
		SAA7134_RS_CONTROL_ME |
		(dmaq->pt.dma >> 12);
	FUNC8(FUNC0(2), base);
	FUNC8(FUNC1(2), base + dev->vbi_hlen * dev->vbi_vlen);
	FUNC8(FUNC3(2), dev->vbi_hlen);
	FUNC8(FUNC2(2), control);
	FUNC8(FUNC0(3), base);
	FUNC8(FUNC1(3), base + dev->vbi_hlen * dev->vbi_vlen);
	FUNC8(FUNC3(3), dev->vbi_hlen);
	FUNC8(FUNC2(3), control);

	/* start DMA */
	FUNC6(dev);
	FUNC4(&dmaq->timeout, jiffies + BUFFER_TIMEOUT);

	return 0;
}