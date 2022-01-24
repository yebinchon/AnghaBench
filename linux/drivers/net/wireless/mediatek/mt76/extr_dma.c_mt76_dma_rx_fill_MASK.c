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
struct mt76_queue_buf {int len; scalar_t__ addr; } ;
struct mt76_queue {int buf_offset; int queued; int ndesc; int /*<<< orphan*/  lock; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  rx_page; } ;
struct mt76_dev {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct mt76_dev*,struct mt76_queue*,struct mt76_queue_buf*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_dev*,struct mt76_queue*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct mt76_dev *dev, struct mt76_queue *q)
{
	dma_addr_t addr;
	void *buf;
	int frames = 0;
	int len = FUNC0(q->buf_size);
	int offset = q->buf_offset;
	int idx;

	FUNC7(&q->lock);

	while (q->queued < q->ndesc - 1) {
		struct mt76_queue_buf qbuf;

		buf = FUNC5(&q->rx_page, q->buf_size, GFP_ATOMIC);
		if (!buf)
			break;

		addr = FUNC1(dev->dev, buf, len, DMA_FROM_DEVICE);
		if (FUNC9(FUNC2(dev->dev, addr))) {
			FUNC6(buf);
			break;
		}

		qbuf.addr = addr + offset;
		qbuf.len = len - offset;
		idx = FUNC3(dev, q, &qbuf, 1, 0, buf, NULL);
		frames++;
	}

	if (frames)
		FUNC4(dev, q);

	FUNC8(&q->lock);

	return frames;
}