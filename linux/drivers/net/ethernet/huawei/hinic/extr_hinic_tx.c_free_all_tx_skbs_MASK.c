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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct hinic_txq {int /*<<< orphan*/  free_sges; struct hinic_sq* sq; int /*<<< orphan*/  netdev; } ;
struct hinic_sq_wqe {int dummy; } ;
struct hinic_sq {int dummy; } ;
struct hinic_dev {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_sq_wqe*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_sq*,unsigned int) ; 
 struct hinic_sq_wqe* FUNC2 (struct hinic_sq*,struct sk_buff**,unsigned int,int /*<<< orphan*/ *) ; 
 struct hinic_sq_wqe* FUNC3 (struct hinic_sq*,struct sk_buff**,unsigned int*,int /*<<< orphan*/ *) ; 
 struct hinic_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_dev*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hinic_txq *txq)
{
	struct hinic_dev *nic_dev = FUNC4(txq->netdev);
	struct hinic_sq *sq = txq->sq;
	struct hinic_sq_wqe *sq_wqe;
	unsigned int wqe_size;
	struct sk_buff *skb;
	int nr_sges;
	u16 ci;

	while ((sq_wqe = FUNC3(sq, &skb, &wqe_size, &ci))) {
		sq_wqe = FUNC2(sq, &skb, wqe_size, &ci);
		if (!sq_wqe)
			break;

		nr_sges = FUNC5(skb)->nr_frags + 1;

		FUNC0(sq_wqe, txq->free_sges, nr_sges);

		FUNC1(sq, wqe_size);

		FUNC6(nic_dev, skb, txq->free_sges);
	}
}