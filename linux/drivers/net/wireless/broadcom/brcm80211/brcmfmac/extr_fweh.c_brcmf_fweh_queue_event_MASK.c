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
typedef  int /*<<< orphan*/  ulong ;
struct brcmf_fweh_queue_item {int /*<<< orphan*/  q; } ;
struct brcmf_fweh_info {int /*<<< orphan*/  event_work; int /*<<< orphan*/  evt_q_lock; int /*<<< orphan*/  event_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcmf_fweh_info *fweh,
				   struct brcmf_fweh_queue_item *event)
{
	ulong flags;

	FUNC2(&fweh->evt_q_lock, flags);
	FUNC0(&event->q, &fweh->event_q);
	FUNC3(&fweh->evt_q_lock, flags);
	FUNC1(&fweh->event_work);
}