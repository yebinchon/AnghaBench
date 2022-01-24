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
struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sge_qset {int /*<<< orphan*/ * txq; } ;
struct TYPE_2__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; } ;

/* Variables and functions */
 size_t TXQ_CTRL ; 
 size_t TXQ_OFLD ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 size_t FUNC3 (struct sk_buff*) ; 
 struct adapter* FUNC4 (struct t3cdev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct t3cdev *tdev, struct sk_buff *skb)
{
	struct adapter *adap = FUNC4(tdev);
	struct sge_qset *qs = &adap->sge.qs[FUNC3(skb)];

	if (FUNC5(FUNC1(skb)))
		return FUNC0(adap, &qs->txq[TXQ_CTRL], skb);

	return FUNC2(adap, &qs->txq[TXQ_OFLD], skb);
}