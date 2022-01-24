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
typedef  scalar_t__ u32 ;
struct ispstat_buffer {int empty; int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct ispstat {scalar_t__ buf_alloc_size; scalar_t__ state; TYPE_2__ subdev; TYPE_1__* isp; struct ispstat_buffer* buf; scalar_t__ buf_processing; int /*<<< orphan*/ * locked_buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; int /*<<< orphan*/  stat_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 scalar_t__ ISPSTAT_DISABLED ; 
 scalar_t__ FUNC1 (struct ispstat*) ; 
 unsigned int STAT_MAX_BUFS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct ispstat_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ispstat *stat, u32 size)
{
	struct device *dev = FUNC1(stat)
			   ? NULL : stat->isp->dev;
	unsigned long flags;
	unsigned int i;

	FUNC7(&stat->isp->stat_lock, flags);

	FUNC0(stat->locked_buf != NULL);

	/* Are the old buffers big enough? */
	if (stat->buf_alloc_size >= size) {
		FUNC8(&stat->isp->stat_lock, flags);
		return 0;
	}

	if (stat->state != ISPSTAT_DISABLED || stat->buf_processing) {
		FUNC4(stat->isp->dev,
			 "%s: trying to allocate memory when busy\n",
			 stat->subdev.name);
		FUNC8(&stat->isp->stat_lock, flags);
		return -EBUSY;
	}

	FUNC8(&stat->isp->stat_lock, flags);

	FUNC6(stat);

	stat->buf_alloc_size = size;

	for (i = 0; i < STAT_MAX_BUFS; i++) {
		struct ispstat_buffer *buf = &stat->buf[i];
		int ret;

		ret = FUNC5(dev, buf, size);
		if (ret < 0) {
			FUNC3(stat->isp->dev,
				"%s: Failed to allocate DMA buffer %u\n",
				stat->subdev.name, i);
			FUNC6(stat);
			return ret;
		}

		buf->empty = 1;

		FUNC2(stat->isp->dev,
			"%s: buffer[%u] allocated. dma=%pad virt=%p",
			stat->subdev.name, i, &buf->dma_addr, buf->virt_addr);
	}

	return 0;
}