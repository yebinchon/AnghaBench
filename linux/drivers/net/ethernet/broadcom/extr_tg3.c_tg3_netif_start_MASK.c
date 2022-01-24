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
struct tg3 {TYPE_2__* napi; int /*<<< orphan*/  dev; scalar_t__ link_up; } ;
struct TYPE_4__ {TYPE_1__* hw_status; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_STATUS_UPDATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 

__attribute__((used)) static inline void FUNC5(struct tg3 *tp)
{
	FUNC4(tp);

	/* NOTE: unconditional netif_tx_wake_all_queues is only
	 * appropriate so long as all callers are assured to
	 * have free tx slots (such as after tg3_init_hw)
	 */
	FUNC1(tp->dev);

	if (tp->link_up)
		FUNC0(tp->dev);

	FUNC3(tp);
	tp->napi[0].hw_status->status |= SD_STATUS_UPDATED;
	FUNC2(tp);
}