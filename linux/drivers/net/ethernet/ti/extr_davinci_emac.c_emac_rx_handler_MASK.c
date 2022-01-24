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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; } ;
struct device {int dummy; } ;
struct net_device {TYPE_1__ stats; struct device dev; } ;
struct emac_priv {int /*<<< orphan*/  rxchan; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC6 () ; 
 struct emac_priv* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(void *token, int len, int status)
{
	struct sk_buff		*skb = token;
	struct net_device	*ndev = skb->dev;
	struct emac_priv	*priv = FUNC7(ndev);
	struct device		*emac_dev = &ndev->dev;
	int			ret;

	/* free and bail if we are shutting down */
	if (FUNC13(!FUNC10(ndev))) {
		FUNC3(skb);
		return;
	}

	/* recycle on receive error */
	if (status < 0) {
		ndev->stats.rx_errors++;
		goto recycle;
	}

	/* feed received packet up the stack */
	FUNC11(skb, len);
	skb->protocol = FUNC5(skb, ndev);
	FUNC9(skb);
	ndev->stats.rx_bytes += len;
	ndev->stats.rx_packets++;

	/* alloc a new packet for receive */
	skb = FUNC4(priv);
	if (!skb) {
		if (FUNC8(priv) && FUNC6())
			FUNC2(emac_dev, "failed rx buffer alloc\n");
		return;
	}

recycle:
	ret = FUNC1(priv->rxchan, skb, skb->data,
			FUNC12(skb), 0);

	FUNC0(ret == -ENOMEM);
	if (FUNC13(ret < 0))
		FUNC3(skb);
}