#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {struct saa7134_dmaqueue* drv_priv; } ;
struct saa7134_dmaqueue {struct saa7134_dev* dev; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int width; int height; } ;
struct saa7134_dev {int width; int height; TYPE_3__ crop_bounds; TYPE_2__ crop_current; TYPE_1__* fmt; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int depth; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*) ; 

__attribute__((used)) static int FUNC2(struct vb2_queue *q,
			   unsigned int *nbuffers, unsigned int *nplanes,
			   unsigned int sizes[], struct device *alloc_devs[])
{
	struct saa7134_dmaqueue *dmaq = q->drv_priv;
	struct saa7134_dev *dev = dmaq->dev;
	int size = dev->fmt->depth * dev->width * dev->height >> 3;

	if (dev->width    < 48 ||
	    dev->height   < 32 ||
	    dev->width/4  > dev->crop_current.width  ||
	    dev->height/4 > dev->crop_current.height ||
	    dev->width    > dev->crop_bounds.width  ||
	    dev->height   > dev->crop_bounds.height)
		return -EINVAL;

	*nbuffers = FUNC0(size, *nbuffers);
	*nplanes = 1;
	sizes[0] = size;

	FUNC1(dev);

	return 0;
}