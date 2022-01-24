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
struct tm6000_core {int /*<<< orphan*/ ** urb_dma; int /*<<< orphan*/ ** urb_buffer; int /*<<< orphan*/  urb_size; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int TM6000_NUM_URB_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct tm6000_core *dev)
{
	int i;

	if (!dev->urb_buffer)
		return 0;

	for (i = 0; i < TM6000_NUM_URB_BUF; i++) {
		if (dev->urb_buffer[i]) {
			FUNC1(dev->udev,
					dev->urb_size,
					dev->urb_buffer[i],
					dev->urb_dma[i]);
			dev->urb_buffer[i] = NULL;
		}
	}
	FUNC0(dev->urb_buffer);
	FUNC0(dev->urb_dma);
	dev->urb_buffer = NULL;
	dev->urb_dma = NULL;

	return 0;
}