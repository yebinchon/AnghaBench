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
struct ucan_urb_context {int allocated; } ;
struct ucan_priv {int /*<<< orphan*/  context_lock; int /*<<< orphan*/  available_tx_urbs; int /*<<< orphan*/  netdev; int /*<<< orphan*/  context_array; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct ucan_priv *up,
				 struct ucan_urb_context *ctx)
{
	unsigned long flags;
	bool ret = false;

	if (FUNC0(!up->context_array))
		return false;

	/* execute context operation atomically */
	FUNC2(&up->context_lock, flags);

	/* context was not allocated, maybe the device sent garbage */
	if (ctx->allocated) {
		ctx->allocated = false;

		/* check if the queue needs to be woken */
		if (!up->available_tx_urbs)
			FUNC1(up->netdev);
		up->available_tx_urbs++;

		ret = true;
	}

	FUNC3(&up->context_lock, flags);
	return ret;
}