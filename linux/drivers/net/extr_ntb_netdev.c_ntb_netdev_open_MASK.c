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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct ntb_netdev {int /*<<< orphan*/  qp; int /*<<< orphan*/  tx_timer; } ;
struct net_device {scalar_t__ mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 int NTB_RXQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct net_device*,scalar_t__) ; 
 struct ntb_netdev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  ntb_netdev_tx_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct ntb_netdev *dev = FUNC2(ndev);
	struct sk_buff *skb;
	int rc, i, len;

	/* Add some empty rx bufs */
	for (i = 0; i < NTB_RXQ_SIZE; i++) {
		skb = FUNC1(ndev, ndev->mtu + ETH_HLEN);
		if (!skb) {
			rc = -ENOMEM;
			goto err;
		}

		rc = FUNC6(dev->qp, skb, skb->data,
					      ndev->mtu + ETH_HLEN);
		if (rc) {
			FUNC0(skb);
			goto err;
		}
	}

	FUNC8(&dev->tx_timer, ntb_netdev_tx_timer, 0);

	FUNC3(ndev);
	FUNC5(dev->qp);
	FUNC4(ndev);

	return 0;

err:
	while ((skb = FUNC7(dev->qp, &len)))
		FUNC0(skb);
	return rc;
}