#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct hostap_tx_callback_info {scalar_t__ idx; struct hostap_tx_callback_info* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct hostap_tx_callback_info* tx_callback; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostap_tx_callback_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(local_info_t *local, u16 idx)
{
	unsigned long flags;
	struct hostap_tx_callback_info *cb, *prev = NULL;

	FUNC1(&local->lock, flags);
	cb = local->tx_callback;
	while (cb != NULL && cb->idx != idx) {
		prev = cb;
		cb = cb->next;
	}
	if (cb) {
		if (prev == NULL)
			local->tx_callback = cb->next;
		else
			prev->next = cb->next;
		FUNC0(cb);
	}
	FUNC2(&local->lock, flags);

	return cb ? 0 : -1;
}