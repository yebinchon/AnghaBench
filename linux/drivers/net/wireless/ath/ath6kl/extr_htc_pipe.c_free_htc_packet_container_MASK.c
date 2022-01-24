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
struct list_head {int dummy; } ;
struct TYPE_4__ {struct htc_packet* htc_packet_pool; } ;
struct htc_target {int /*<<< orphan*/  rx_lock; TYPE_2__ pipe; } ;
struct TYPE_3__ {struct list_head* next; } ;
struct htc_packet {TYPE_1__ list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct htc_target *target,
				      struct htc_packet *packet)
{
	struct list_head *lh;

	FUNC0(&target->rx_lock);

	if (target->pipe.htc_packet_pool == NULL) {
		target->pipe.htc_packet_pool = packet;
		packet->list.next = NULL;
	} else {
		lh = (struct list_head *) target->pipe.htc_packet_pool;
		packet->list.next = lh;
		target->pipe.htc_packet_pool = packet;
	}

	FUNC1(&target->rx_lock);
}