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
struct efx_tx_queue {int /*<<< orphan*/  insert_count; } ;
struct efx_tx_buffer {unsigned int len; int /*<<< orphan*/  flags; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_TX_BUF_SKB ; 
 unsigned int EFX_TX_CB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC2 (struct efx_tx_queue*,struct efx_tx_buffer*) ; 
 struct efx_tx_buffer* FUNC3 (struct efx_tx_queue*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct efx_tx_queue *tx_queue,
				struct sk_buff *skb)
{
	unsigned int copy_len = skb->len;
	struct efx_tx_buffer *buffer;
	u8 *copy_buffer;
	int rc;

	FUNC0(copy_len > EFX_TX_CB_SIZE);

	buffer = FUNC3(tx_queue);

	copy_buffer = FUNC2(tx_queue, buffer);
	if (FUNC5(!copy_buffer))
		return -ENOMEM;

	rc = FUNC4(skb, 0, copy_buffer, copy_len);
	FUNC1(rc);
	buffer->len = copy_len;

	buffer->skb = skb;
	buffer->flags = EFX_TX_BUF_SKB;

	++tx_queue->insert_count;
	return rc;
}