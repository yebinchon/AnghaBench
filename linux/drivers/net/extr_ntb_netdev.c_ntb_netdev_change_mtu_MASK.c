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
struct ntb_netdev {int /*<<< orphan*/  qp; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct ntb_netdev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev, int new_mtu)
{
	struct ntb_netdev *dev = FUNC3(ndev);
	struct sk_buff *skb;
	int len, rc;

	if (new_mtu > FUNC7(dev->qp) - ETH_HLEN)
		return -EINVAL;

	if (!FUNC4(ndev)) {
		ndev->mtu = new_mtu;
		return 0;
	}

	/* Bring down the link and dispose of posted rx entries */
	FUNC5(dev->qp);

	if (ndev->mtu < new_mtu) {
		int i;

		for (i = 0; (skb = FUNC9(dev->qp, &len)); i++)
			FUNC0(skb);

		for (; i; i--) {
			skb = FUNC1(ndev, new_mtu + ETH_HLEN);
			if (!skb) {
				rc = -ENOMEM;
				goto err;
			}

			rc = FUNC8(dev->qp, skb, skb->data,
						      new_mtu + ETH_HLEN);
			if (rc) {
				FUNC0(skb);
				goto err;
			}
		}
	}

	ndev->mtu = new_mtu;

	FUNC6(dev->qp);

	return 0;

err:
	FUNC5(dev->qp);

	while ((skb = FUNC9(dev->qp, &len)))
		FUNC0(skb);

	FUNC2(ndev, "Error changing MTU, device inoperable\n");
	return rc;
}