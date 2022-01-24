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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nicvf {TYPE_1__* pnicvf; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_QSET_SQ_0_7_DOOR ; 
 struct netdev_queue* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(struct nicvf *nic, struct sk_buff *skb,
				     int sq_num, int desc_cnt)
{
	struct netdev_queue *txq;

	txq = FUNC0(nic->pnicvf->netdev,
				  FUNC3(skb));

	FUNC1(txq, skb->len);

	/* make sure all memory stores are done before ringing doorbell */
	FUNC4();

	/* Inform HW to xmit all TSO segments */
	FUNC2(nic, NIC_QSET_SQ_0_7_DOOR,
			      sq_num, desc_cnt);
}