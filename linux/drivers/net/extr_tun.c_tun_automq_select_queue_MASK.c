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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct tun_struct {int /*<<< orphan*/ * flows; int /*<<< orphan*/  numqueues; } ;
struct tun_flow_entry {int queue_index; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct tun_flow_entry* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tun_flow_entry*,int) ; 
 size_t FUNC4 (int) ; 

__attribute__((used)) static u16 FUNC5(struct tun_struct *tun, struct sk_buff *skb)
{
	struct tun_flow_entry *e;
	u32 txq = 0;
	u32 numqueues = 0;

	numqueues = FUNC0(tun->numqueues);

	txq = FUNC1(skb);
	e = FUNC2(&tun->flows[FUNC4(txq)], txq);
	if (e) {
		FUNC3(e, txq);
		txq = e->queue_index;
	} else {
		/* use multiply and shift instead of expensive divide */
		txq = ((u64)txq * numqueues) >> 32;
	}

	return txq;
}