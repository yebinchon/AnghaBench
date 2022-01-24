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
typedef  scalar_t__ u32 ;
struct tun_struct {scalar_t__ rx_batched; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct sk_buff_head sk_write_queue; } ;
struct tun_file {int /*<<< orphan*/  queue_index; TYPE_1__ sk; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff_head*) ; 
 scalar_t__ FUNC7 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct tun_struct *tun, struct tun_file *tfile,
			   struct sk_buff *skb, int more)
{
	struct sk_buff_head *queue = &tfile->sk.sk_write_queue;
	struct sk_buff_head process_queue;
	u32 rx_batched = tun->rx_batched;
	bool rcv = false;

	if (!rx_batched || (!more && FUNC6(queue))) {
		FUNC3();
		FUNC9(skb, tfile->queue_index);
		FUNC5(skb);
		FUNC4();
		return;
	}

	FUNC10(&queue->lock);
	if (!more || FUNC7(queue) == rx_batched) {
		FUNC1(&process_queue);
		FUNC8(queue, &process_queue);
		rcv = true;
	} else {
		FUNC2(queue, skb);
	}
	FUNC11(&queue->lock);

	if (rcv) {
		struct sk_buff *nskb;

		FUNC3();
		while ((nskb = FUNC0(&process_queue))) {
			FUNC9(nskb, tfile->queue_index);
			FUNC5(nskb);
		}
		FUNC9(skb, tfile->queue_index);
		FUNC5(skb);
		FUNC4();
	}
}