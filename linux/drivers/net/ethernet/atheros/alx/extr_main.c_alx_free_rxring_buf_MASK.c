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
typedef  scalar_t__ u16 ;
struct alx_rx_queue {scalar_t__ count; scalar_t__ rrd_read_idx; scalar_t__ read_idx; scalar_t__ write_idx; int /*<<< orphan*/  dev; struct alx_buffer* bufs; } ;
struct alx_buffer {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC1 (struct alx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct alx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size ; 

__attribute__((used)) static void FUNC6(struct alx_rx_queue *rxq)
{
	struct alx_buffer *cur_buf;
	u16 i;

	if (!rxq->bufs)
		return;

	for (i = 0; i < rxq->count; i++) {
		cur_buf = rxq->bufs + i;
		if (cur_buf->skb) {
			FUNC5(rxq->dev,
					 FUNC1(cur_buf, dma),
					 FUNC3(cur_buf, size),
					 DMA_FROM_DEVICE);
			FUNC0(cur_buf->skb);
			cur_buf->skb = NULL;
			FUNC4(cur_buf, size, 0);
			FUNC2(cur_buf, dma, 0);
		}
	}

	rxq->write_idx = 0;
	rxq->read_idx = 0;
	rxq->rrd_read_idx = 0;
}