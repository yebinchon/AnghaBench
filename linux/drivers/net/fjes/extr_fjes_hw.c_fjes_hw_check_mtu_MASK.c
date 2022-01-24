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
struct TYPE_2__ {scalar_t__ frame_max; int rx_status; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
typedef  int /*<<< orphan*/  u32 ;
struct epbuf_handler {union ep_buffer_info* info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FJES_RX_MTU_CHANGING_DONE ; 

bool FUNC1(struct epbuf_handler *epbh, u32 mtu)
{
	union ep_buffer_info *info = epbh->info;

	return ((info->v1i.frame_max == FUNC0(mtu)) &&
		info->v1i.rx_status & FJES_RX_MTU_CHANGING_DONE);
}