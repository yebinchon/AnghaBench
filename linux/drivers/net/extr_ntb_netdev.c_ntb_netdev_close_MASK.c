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
struct sk_buff {int dummy; } ;
struct ntb_netdev {int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  qp; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct ntb_netdev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev)
{
	struct ntb_netdev *dev = FUNC2(ndev);
	struct sk_buff *skb;
	int len;

	FUNC3(dev->qp);

	while ((skb = FUNC4(dev->qp, &len)))
		FUNC1(skb);

	FUNC0(&dev->tx_timer);

	return 0;
}