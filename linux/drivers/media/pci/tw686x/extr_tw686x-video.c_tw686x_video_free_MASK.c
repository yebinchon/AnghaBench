#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tw686x_video_channel {int /*<<< orphan*/  device; } ;
struct tw686x_dev {TYPE_1__* dma_ops; struct tw686x_video_channel* video_channels; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (struct tw686x_video_channel*,unsigned int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (struct tw686x_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct tw686x_video_channel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tw686x_dev *dev)
{
	unsigned int ch, pb;

	for (ch = 0; ch < FUNC0(dev); ch++) {
		struct tw686x_video_channel *vc = &dev->video_channels[ch];

		FUNC2(vc->device);

		if (dev->dma_ops->free)
			for (pb = 0; pb < 2; pb++)
				dev->dma_ops->free(vc, pb);
	}
}