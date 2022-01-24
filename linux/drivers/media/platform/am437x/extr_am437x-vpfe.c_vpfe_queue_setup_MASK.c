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
struct TYPE_6__ {unsigned int sizeimage; } ;
struct TYPE_4__ {TYPE_3__ pix; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
struct vpfe_device {TYPE_2__ fmt; } ;
struct vb2_queue {unsigned int num_buffers; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vpfe_device* FUNC0 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vpfe_device*,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *vq,
			    unsigned int *nbuffers, unsigned int *nplanes,
			    unsigned int sizes[], struct device *alloc_devs[])
{
	struct vpfe_device *vpfe = FUNC0(vq);
	unsigned size = vpfe->fmt.fmt.pix.sizeimage;

	if (vq->num_buffers + *nbuffers < 3)
		*nbuffers = 3 - vq->num_buffers;

	if (*nplanes) {
		if (sizes[0] < size)
			return -EINVAL;
		size = sizes[0];
	}

	*nplanes = 1;
	sizes[0] = size;

	FUNC2(1, vpfe,
		"nbuffers=%d, size=%u\n", *nbuffers, sizes[0]);

	/* Calculate field offset */
	FUNC1(vpfe);

	return 0;
}