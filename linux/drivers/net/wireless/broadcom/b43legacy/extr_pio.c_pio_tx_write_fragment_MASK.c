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
union txhdr_union {int /*<<< orphan*/  txhdr_fw3; } ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct b43legacy_pioqueue {scalar_t__ need_workarounds; int /*<<< orphan*/  dev; } ;
struct b43legacy_pio_txpacket {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_pioqueue*,struct b43legacy_pio_txpacket*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_pioqueue*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_pioqueue*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_pioqueue*) ; 

__attribute__((used)) static int FUNC8(struct b43legacy_pioqueue *queue,
				  struct sk_buff *skb,
				  struct b43legacy_pio_txpacket *packet,
				  size_t txhdr_size)
{
	union txhdr_union txhdr_data;
	u8 *txhdr = NULL;
	unsigned int octets;
	int err;

	txhdr = (u8 *)(&txhdr_data.txhdr_fw3);

	FUNC0(FUNC4(skb)->nr_frags != 0);
	err = FUNC2(queue->dev,
				 txhdr, skb->data, skb->len,
				 FUNC1(skb),
				 FUNC3(queue, packet));
	if (err)
		return err;

	FUNC7(queue);
	octets = skb->len + txhdr_size;
	if (queue->need_workarounds)
		octets--;
	FUNC6(queue, txhdr, (u8 *)skb->data, octets);
	FUNC5(queue, skb);

	return 0;
}