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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {unsigned int len; } ;
struct ef4_tx_queue {unsigned int tx_min_size; int /*<<< orphan*/  insert_count; } ;
struct ef4_tx_buffer {unsigned int len; int /*<<< orphan*/  flags; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EF4_TX_BUF_SKB ; 
 unsigned int EF4_TX_CB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC2 (struct ef4_tx_queue*,struct ef4_tx_buffer*) ; 
 struct ef4_tx_buffer* FUNC3 (struct ef4_tx_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ef4_tx_queue *tx_queue,
				struct sk_buff *skb)
{
	unsigned int min_len = tx_queue->tx_min_size;
	unsigned int copy_len = skb->len;
	struct ef4_tx_buffer *buffer;
	u8 *copy_buffer;
	int rc;

	FUNC0(copy_len > EF4_TX_CB_SIZE);

	buffer = FUNC3(tx_queue);

	copy_buffer = FUNC2(tx_queue, buffer);
	if (FUNC6(!copy_buffer))
		return -ENOMEM;

	rc = FUNC5(skb, 0, copy_buffer, copy_len);
	FUNC1(rc);
	if (FUNC6(copy_len < min_len)) {
		FUNC4(copy_buffer + copy_len, 0, min_len - copy_len);
		buffer->len = min_len;
	} else {
		buffer->len = copy_len;
	}

	buffer->skb = skb;
	buffer->flags = EF4_TX_BUF_SKB;

	++tx_queue->insert_count;
	return rc;
}