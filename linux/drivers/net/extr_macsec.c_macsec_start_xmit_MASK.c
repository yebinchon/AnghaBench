#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  OutPktsUntagged; } ;
struct pcpu_secy_stats {int /*<<< orphan*/  syncp; TYPE_1__ stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct macsec_secy {int /*<<< orphan*/  tx_sc; int /*<<< orphan*/  operational; int /*<<< orphan*/  protect_frames; } ;
struct macsec_dev {struct macsec_secy secy; int /*<<< orphan*/  real_dev; int /*<<< orphan*/  stats; } ;
typedef  int netdev_tx_t ;
struct TYPE_6__ {int /*<<< orphan*/  tx_sa; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 
 struct macsec_dev* FUNC9 (struct net_device*) ; 
 struct pcpu_secy_stats* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb,
				     struct net_device *dev)
{
	struct macsec_dev *macsec = FUNC9(dev);
	struct macsec_secy *secy = &macsec->secy;
	struct pcpu_secy_stats *secy_stats;
	int ret, len;

	/* 10.5 */
	if (!secy->protect_frames) {
		secy_stats = FUNC10(macsec->stats);
		FUNC11(&secy_stats->syncp);
		secy_stats->stats.OutPktsUntagged++;
		FUNC12(&secy_stats->syncp);
		skb->dev = macsec->real_dev;
		len = skb->len;
		ret = FUNC3(skb);
		FUNC2(dev, ret, len);
		return ret;
	}

	if (!secy->operational) {
		FUNC4(skb);
		dev->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	skb = FUNC6(skb, dev);
	if (FUNC0(skb)) {
		if (FUNC1(skb) != -EINPROGRESS)
			dev->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	FUNC5(skb, &macsec->secy.tx_sc, FUNC8(skb)->tx_sa);

	FUNC7(skb, dev);
	len = skb->len;
	ret = FUNC3(skb);
	FUNC2(dev, ret, len);
	return ret;
}