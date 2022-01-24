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
struct ucan_urb_context {int allocated; } ;
struct TYPE_2__ {int tx_fifo; } ;
struct ucan_priv {int /*<<< orphan*/  context_lock; int /*<<< orphan*/  netdev; int /*<<< orphan*/  available_tx_urbs; struct ucan_urb_context* context_array; TYPE_1__ device_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct ucan_urb_context *FUNC4(struct ucan_priv *up)
{
	int i;
	unsigned long flags;
	struct ucan_urb_context *ret = NULL;

	if (FUNC0(!up->context_array))
		return NULL;

	/* execute context operation atomically */
	FUNC2(&up->context_lock, flags);

	for (i = 0; i < up->device_info.tx_fifo; i++) {
		if (!up->context_array[i].allocated) {
			/* update context */
			ret = &up->context_array[i];
			up->context_array[i].allocated = true;

			/* stop queue if necessary */
			up->available_tx_urbs--;
			if (!up->available_tx_urbs)
				FUNC1(up->netdev);

			break;
		}
	}

	FUNC3(&up->context_lock, flags);
	return ret;
}