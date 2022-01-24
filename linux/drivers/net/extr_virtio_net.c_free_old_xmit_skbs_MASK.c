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
struct xdp_frame {scalar_t__ len; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {unsigned int bytes; unsigned int packets; int /*<<< orphan*/  syncp; } ;
struct send_queue {TYPE_1__ stats; int /*<<< orphan*/  vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sk_buff*) ; 
 struct xdp_frame* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_frame*) ; 

__attribute__((used)) static void FUNC9(struct send_queue *sq, bool in_napi)
{
	unsigned int len;
	unsigned int packets = 0;
	unsigned int bytes = 0;
	void *ptr;

	while ((ptr = FUNC7(sq->vq, &len)) != NULL) {
		if (FUNC1(!FUNC0(ptr))) {
			struct sk_buff *skb = ptr;

			FUNC3("Sent skb %p\n", skb);

			bytes += skb->len;
			FUNC2(skb, in_napi);
		} else {
			struct xdp_frame *frame = FUNC4(ptr);

			bytes += frame->len;
			FUNC8(frame);
		}
		packets++;
	}

	/* Avoid overhead when no packets have been processed
	 * happens when called speculatively from start_xmit.
	 */
	if (!packets)
		return;

	FUNC5(&sq->stats.syncp);
	sq->stats.bytes += bytes;
	sq->stats.packets += packets;
	FUNC6(&sq->stats.syncp);
}