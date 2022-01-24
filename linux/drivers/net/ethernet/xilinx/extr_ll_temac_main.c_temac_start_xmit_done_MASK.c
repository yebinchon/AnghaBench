#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct temac_local {size_t tx_bd_ci; struct cdmac_bd* tx_bd_v; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {unsigned int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
struct cdmac_bd {scalar_t__ app0; scalar_t__ len; scalar_t__ app4; scalar_t__ app3; scalar_t__ app2; scalar_t__ app1; scalar_t__ phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int STS_CTRL_APP0_CMPLT ; 
 size_t TX_BD_NUM ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct temac_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct cdmac_bd*) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct temac_local *lp = FUNC3(ndev);
	struct cdmac_bd *cur_p;
	unsigned int stat = 0;
	struct sk_buff *skb;

	cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
	stat = FUNC0(cur_p->app0);

	while (stat & STS_CTRL_APP0_CMPLT) {
		FUNC2(ndev->dev.parent, FUNC0(cur_p->phys),
				 FUNC0(cur_p->len), DMA_TO_DEVICE);
		skb = (struct sk_buff *)FUNC5(cur_p);
		if (skb)
			FUNC1(skb);
		cur_p->app0 = 0;
		cur_p->app1 = 0;
		cur_p->app2 = 0;
		cur_p->app3 = 0;
		cur_p->app4 = 0;

		ndev->stats.tx_packets++;
		ndev->stats.tx_bytes += FUNC0(cur_p->len);

		lp->tx_bd_ci++;
		if (lp->tx_bd_ci >= TX_BD_NUM)
			lp->tx_bd_ci = 0;

		cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
		stat = FUNC0(cur_p->app0);
	}

	FUNC4(ndev);
}