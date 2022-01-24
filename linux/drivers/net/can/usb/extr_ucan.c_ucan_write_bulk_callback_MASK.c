#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  dev; struct ucan_urb_context* context; } ;
struct ucan_urb_context {struct ucan_priv* up; } ;
struct ucan_priv {int context_array; TYPE_2__* netdev; int /*<<< orphan*/  echo_skb_lock; } ;
struct ucan_message_out {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ucan_urb_context*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct ucan_priv*,struct ucan_urb_context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct urb *urb)
{
	unsigned long flags;
	struct ucan_priv *up;
	struct ucan_urb_context *context = urb->context;

	/* get the urb context */
	if (FUNC0(!context))
		return;

	/* free up our allocated buffer */
	FUNC8(urb->dev,
			  sizeof(struct ucan_message_out),
			  urb->transfer_buffer,
			  urb->transfer_dma);

	up = context->up;
	if (FUNC0(!up))
		return;

	/* sanity check */
	if (!FUNC4(up->netdev))
		return;

	/* transmission failed (USB - the device will not send a TX complete) */
	if (urb->status) {
		FUNC3(up->netdev,
			    "failed to transmit USB message to device: %d\n",
			     urb->status);

		/* update counters an cleanup */
		FUNC5(&up->echo_skb_lock, flags);
		FUNC1(up->netdev, context - up->context_array);
		FUNC6(&up->echo_skb_lock, flags);

		up->netdev->stats.tx_dropped++;

		/* release context and restart the queue if necessary */
		if (!FUNC7(up, context))
			FUNC2(up->netdev,
				   "urb failed, failed to release context\n");
	}
}