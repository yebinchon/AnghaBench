#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct airspy {int /*<<< orphan*/  urbs_initialized; int /*<<< orphan*/ * dma_addr; TYPE_1__** urb_list; int /*<<< orphan*/ * buf_list; int /*<<< orphan*/  udev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_BUFFER_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_BULK_BUFS ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  airspy_urb_complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct airspy*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct airspy *s)
{
	int i, j;

	/* allocate the URBs */
	for (i = 0; i < MAX_BULK_BUFS; i++) {
		FUNC0(s->dev, "alloc urb=%d\n", i);
		s->urb_list[i] = FUNC1(0, GFP_ATOMIC);
		if (!s->urb_list[i]) {
			for (j = 0; j < i; j++)
				FUNC3(s->urb_list[j]);
			return -ENOMEM;
		}
		FUNC2(s->urb_list[i],
				s->udev,
				FUNC4(s->udev, 0x81),
				s->buf_list[i],
				BULK_BUFFER_SIZE,
				airspy_urb_complete, s);

		s->urb_list[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
		s->urb_list[i]->transfer_dma = s->dma_addr[i];
		s->urbs_initialized++;
	}

	return 0;
}