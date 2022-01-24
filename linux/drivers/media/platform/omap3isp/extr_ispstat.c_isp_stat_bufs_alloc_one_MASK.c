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
struct ispstat_buffer {scalar_t__ dma_addr; int /*<<< orphan*/ * virt_addr; int /*<<< orphan*/  sgt; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (struct device*,unsigned int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,unsigned int,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				   struct ispstat_buffer *buf,
				   unsigned int size)
{
	int ret;

	buf->virt_addr = FUNC0(dev, size, &buf->dma_addr,
					    GFP_KERNEL);
	if (!buf->virt_addr)
		return -ENOMEM;

	ret = FUNC2(dev, &buf->sgt, buf->virt_addr, buf->dma_addr,
			      size);
	if (ret < 0) {
		FUNC1(dev, size, buf->virt_addr, buf->dma_addr);
		buf->virt_addr = NULL;
		buf->dma_addr = 0;
		return ret;
	}

	return 0;
}