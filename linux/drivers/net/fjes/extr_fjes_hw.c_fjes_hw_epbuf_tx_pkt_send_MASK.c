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
struct TYPE_2__ {size_t frame_max; int /*<<< orphan*/  count_max; scalar_t__ tail; int /*<<< orphan*/  head; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
struct esmem_frame {size_t frame_size; scalar_t__ frame_data; } ;
struct epbuf_handler {union ep_buffer_info* info; int /*<<< orphan*/ * ring; } ;

/* Variables and functions */
 int ENOBUFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 

int FUNC4(struct epbuf_handler *epbh,
			      void *frame, size_t size)
{
	union ep_buffer_info *info = epbh->info;
	struct esmem_frame *ring_frame;

	if (FUNC0(info->v1i.head, info->v1i.tail, info->v1i.count_max))
		return -ENOBUFS;

	ring_frame = (struct esmem_frame *)&(epbh->ring[FUNC1
					     (info->v1i.tail - 1,
					      info->v1i.count_max) *
					     info->v1i.frame_max]);

	ring_frame->frame_size = size;
	FUNC3((void *)(ring_frame->frame_data), (void *)frame, size);

	FUNC2(epbh->info->v1i.tail, info->v1i.count_max);

	return 0;
}