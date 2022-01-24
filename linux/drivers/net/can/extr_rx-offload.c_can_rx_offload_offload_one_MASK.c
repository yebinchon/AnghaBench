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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct can_rx_offload_cb {int /*<<< orphan*/  timestamp; } ;
struct can_rx_offload {scalar_t__ skb_queue_len_max; int (* mailbox_read ) (struct can_rx_offload*,struct can_frame*,int /*<<< orphan*/ *,unsigned int) ;TYPE_2__* dev; int /*<<< orphan*/  skb_queue; } ;
struct can_frame {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (TYPE_2__*,struct can_frame**) ; 
 struct can_rx_offload_cb* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct can_rx_offload*,struct can_frame*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (struct can_rx_offload*,struct can_frame*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct sk_buff *
FUNC9(struct can_rx_offload *offload, unsigned int n)
{
	struct sk_buff *skb = NULL, *skb_error = NULL;
	struct can_rx_offload_cb *cb;
	struct can_frame *cf;
	int ret;

	if (FUNC4(FUNC5(&offload->skb_queue) <
		   offload->skb_queue_len_max)) {
		skb = FUNC1(offload->dev, &cf);
		if (FUNC8(!skb))
			skb_error = FUNC0(-ENOMEM);	/* skb alloc failed */
	} else {
		skb_error = FUNC0(-ENOBUFS);		/* skb_queue is full */
	}

	/* If queue is full or skb not available, drop by reading into
	 * overflow buffer.
	 */
	if (FUNC8(skb_error)) {
		struct can_frame cf_overflow;
		u32 timestamp;

		ret = offload->mailbox_read(offload, &cf_overflow,
					    &timestamp, n);

		/* Mailbox was empty. */
		if (FUNC8(!ret))
			return NULL;

		/* Mailbox has been read and we're dropping it or
		 * there was a problem reading the mailbox.
		 *
		 * Increment error counters in any case.
		 */
		offload->dev->stats.rx_dropped++;
		offload->dev->stats.rx_fifo_errors++;

		/* There was a problem reading the mailbox, propagate
		 * error value.
		 */
		if (FUNC8(ret < 0))
			return FUNC0(ret);

		return skb_error;
	}

	cb = FUNC2(skb);
	ret = offload->mailbox_read(offload, cf, &cb->timestamp, n);

	/* Mailbox was empty. */
	if (FUNC8(!ret)) {
		FUNC3(skb);
		return NULL;
	}

	/* There was a problem reading the mailbox, propagate error value. */
	if (FUNC8(ret < 0)) {
		FUNC3(skb);

		offload->dev->stats.rx_dropped++;
		offload->dev->stats.rx_fifo_errors++;

		return FUNC0(ret);
	}

	/* Mailbox was read. */
	return skb;
}