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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; } ;
struct ionic_tx_stats {int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; } ;
struct ionic_queue {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int FUNC0 (struct ionic_queue*,struct sk_buff*) ; 
 int FUNC1 (struct ionic_queue*,struct sk_buff*) ; 
 int /*<<< orphan*/  ionic_tx_clean ; 
 int FUNC2 (struct ionic_queue*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_queue*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ionic_queue*) ; 
 struct ionic_tx_stats* FUNC7 (struct ionic_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct ionic_queue *q, struct sk_buff *skb)
{
	struct ionic_tx_stats *stats = FUNC7(q);
	int err;

	/* set up the initial descriptor */
	if (skb->ip_summed == CHECKSUM_PARTIAL)
		err = FUNC0(q, skb);
	else
		err = FUNC1(q, skb);
	if (err)
		return err;

	/* add frags */
	err = FUNC2(q, skb);
	if (err)
		return err;

	FUNC8(skb);
	stats->pkts++;
	stats->bytes += skb->len;

	FUNC4(FUNC6(q), skb->len);
	FUNC3(q, !FUNC5(), ionic_tx_clean, skb);

	return 0;
}