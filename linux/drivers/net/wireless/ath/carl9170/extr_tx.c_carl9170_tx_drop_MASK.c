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
typedef  int /*<<< orphan*/  uint8_t ;
struct sk_buff {scalar_t__ data; } ;
struct ar9170 {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;
struct _carl9170_tx_superframe {TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_TX_SUPER_MISC_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ar9170_qmap ; 
 size_t FUNC2 (struct ar9170*,struct sk_buff*) ; 

void FUNC3(struct ar9170 *ar, struct sk_buff *skb)
{
	struct _carl9170_tx_superframe *super;
	uint8_t q = 0;

	ar->tx_dropped++;

	super = (void *)skb->data;
	FUNC0(CARL9170_TX_SUPER_MISC_QUEUE, q,
		ar9170_qmap[FUNC2(ar, skb)]);
	FUNC1(ar, super->s.cookie, q);
}