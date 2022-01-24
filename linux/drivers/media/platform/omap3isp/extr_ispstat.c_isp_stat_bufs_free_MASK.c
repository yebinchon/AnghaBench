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
struct ispstat_buffer {int empty; int /*<<< orphan*/ * virt_addr; scalar_t__ dma_addr; int /*<<< orphan*/  sgt; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct ispstat {int /*<<< orphan*/ * active_buf; int /*<<< orphan*/  buf_alloc_size; TYPE_2__ subdev; TYPE_1__* isp; struct ispstat_buffer* buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ispstat*) ; 
 unsigned int STAT_MAX_BUFS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ispstat *stat)
{
	struct device *dev = FUNC0(stat)
			   ? NULL : stat->isp->dev;
	unsigned int i;

	for (i = 0; i < STAT_MAX_BUFS; i++) {
		struct ispstat_buffer *buf = &stat->buf[i];

		if (!buf->virt_addr)
			continue;

		FUNC3(&buf->sgt);

		FUNC2(dev, stat->buf_alloc_size, buf->virt_addr,
				  buf->dma_addr);

		buf->dma_addr = 0;
		buf->virt_addr = NULL;
		buf->empty = 1;
	}

	FUNC1(stat->isp->dev, "%s: all buffers were freed.\n",
		stat->subdev.name);

	stat->buf_alloc_size = 0;
	stat->active_buf = NULL;
}