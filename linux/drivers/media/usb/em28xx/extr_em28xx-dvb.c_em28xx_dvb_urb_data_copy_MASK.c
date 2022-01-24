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
struct urb {scalar_t__ status; int number_of_packets; TYPE_2__* iso_frame_desc; scalar_t__ transfer_buffer; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  pipe; } ;
struct em28xx {TYPE_1__* dvb; scalar_t__ disconnected; } ;
struct TYPE_4__ {scalar_t__ status; int /*<<< orphan*/  actual_length; scalar_t__ offset; } ;
struct TYPE_3__ {int /*<<< orphan*/  demux; } ;

/* Variables and functions */
 scalar_t__ EPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct em28xx *dev, struct urb *urb)
{
	int xfer_bulk, num_packets, i;

	if (!dev)
		return 0;

	if (dev->disconnected)
		return 0;

	if (urb->status < 0)
		FUNC1(dev, -1, urb->status);

	xfer_bulk = FUNC2(urb->pipe);

	if (xfer_bulk) /* bulk */
		num_packets = 1;
	else /* isoc */
		num_packets = urb->number_of_packets;

	for (i = 0; i < num_packets; i++) {
		if (xfer_bulk) {
			if (urb->status < 0) {
				FUNC1(dev, i, urb->status);
				if (urb->status != -EPROTO)
					continue;
			}
			if (!urb->actual_length)
				continue;
			FUNC0(&dev->dvb->demux, urb->transfer_buffer,
					 urb->actual_length);
		} else {
			if (urb->iso_frame_desc[i].status < 0) {
				FUNC1(dev, i,
						 urb->iso_frame_desc[i].status);
				if (urb->iso_frame_desc[i].status != -EPROTO)
					continue;
			}
			if (!urb->iso_frame_desc[i].actual_length)
				continue;
			FUNC0(&dev->dvb->demux,
					 urb->transfer_buffer +
					 urb->iso_frame_desc[i].offset,
					 urb->iso_frame_desc[i].actual_length);
		}
	}

	return 0;
}