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
struct tm6000_core {int /*<<< orphan*/  urb_size; int /*<<< orphan*/ * urb_buffer; int /*<<< orphan*/ * urb_dma; int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TM6000_NUM_URB_BUF ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tm6000_core *dev)
{
	int num_bufs = TM6000_NUM_URB_BUF;
	int i;

	if (dev->urb_buffer)
		return 0;

	dev->urb_buffer = FUNC0(num_bufs, sizeof(void *), GFP_KERNEL);
	if (!dev->urb_buffer)
		return -ENOMEM;

	dev->urb_dma = FUNC0(num_bufs, sizeof(dma_addr_t *),
				     GFP_KERNEL);
	if (!dev->urb_dma)
		return -ENOMEM;

	for (i = 0; i < num_bufs; i++) {
		dev->urb_buffer[i] = FUNC3(
					dev->udev, dev->urb_size,
					GFP_KERNEL, &dev->urb_dma[i]);
		if (!dev->urb_buffer[i]) {
			FUNC2("unable to allocate %i bytes for transfer buffer %i\n",
				    dev->urb_size, i);
			return -ENOMEM;
		}
		FUNC1(dev->urb_buffer[i], 0, dev->urb_size);
	}

	return 0;
}