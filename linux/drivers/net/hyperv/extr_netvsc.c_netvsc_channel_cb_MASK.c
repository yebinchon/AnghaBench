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
struct hv_ring_buffer_info {scalar_t__ priv_read_index; } ;
struct vmbus_channel {struct hv_ring_buffer_info inbound; } ;
struct netvsc_channel {int /*<<< orphan*/  napi; struct vmbus_channel* channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hv_ring_buffer_info*) ; 
 scalar_t__ FUNC2 (struct hv_ring_buffer_info*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(void *context)
{
	struct netvsc_channel *nvchan = context;
	struct vmbus_channel *channel = nvchan->channel;
	struct hv_ring_buffer_info *rbi = &channel->inbound;

	/* preload first vmpacket descriptor */
	FUNC4(FUNC2(rbi) + rbi->priv_read_index);

	if (FUNC3(&nvchan->napi)) {
		/* disable interrupts from host */
		FUNC1(rbi);

		FUNC0(&nvchan->napi);
	}
}