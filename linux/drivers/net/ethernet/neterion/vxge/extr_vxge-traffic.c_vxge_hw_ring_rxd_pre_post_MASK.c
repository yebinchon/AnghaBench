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
struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_ring {struct __vxge_hw_channel channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct __vxge_hw_channel*,void*) ; 

void FUNC1(struct __vxge_hw_ring *ring, void *rxdh)
{
	struct __vxge_hw_channel *channel;

	channel = &ring->channel;

	FUNC0(channel, rxdh);
}