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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct mv643xx_eth_private {int int_mask; int rxq_count; int txq_count; scalar_t__ rxq; TYPE_1__ mib_counters_timer; scalar_t__ txq; TYPE_1__ rx_oom; scalar_t__ oom; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int EAGAIN ; 
 int HZ ; 
 int /*<<< orphan*/  INT_CAUSE ; 
 int /*<<< orphan*/  INT_CAUSE_EXT ; 
 int INT_EXT ; 
 int INT_EXT_LINK_PHY ; 
 int INT_EXT_TX ; 
 int /*<<< orphan*/  INT_MASK ; 
 int /*<<< orphan*/  INT_MASK_EXT ; 
 int /*<<< orphan*/  INT_MAX ; 
 int INT_RX_0 ; 
 int INT_TX_END_0 ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  mv643xx_eth_irq ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct mv643xx_eth_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (struct mv643xx_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (struct mv643xx_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	struct mv643xx_eth_private *mp = FUNC5(dev);
	int err;
	int i;

	FUNC14(mp, INT_CAUSE, 0);
	FUNC14(mp, INT_CAUSE_EXT, 0);
	FUNC7(mp, INT_CAUSE_EXT);

	err = FUNC8(dev->irq, mv643xx_eth_irq,
			  IRQF_SHARED, dev->name, dev);
	if (err) {
		FUNC4(dev, "can't assign irq\n");
		return -EAGAIN;
	}

	FUNC2(mp);

	FUNC3(&mp->napi);

	mp->int_mask = INT_EXT;

	for (i = 0; i < mp->rxq_count; i++) {
		err = FUNC10(mp, i);
		if (err) {
			while (--i >= 0)
				FUNC9(mp->rxq + i);
			goto out;
		}

		FUNC11(mp->rxq + i, INT_MAX);
		mp->int_mask |= INT_RX_0 << i;
	}

	if (mp->oom) {
		mp->rx_oom.expires = jiffies + (HZ / 10);
		FUNC0(&mp->rx_oom);
	}

	for (i = 0; i < mp->txq_count; i++) {
		err = FUNC13(mp, i);
		if (err) {
			while (--i >= 0)
				FUNC12(mp->txq + i);
			goto out_free;
		}
		mp->int_mask |= INT_TX_END_0 << i;
	}

	FUNC0(&mp->mib_counters_timer);
	FUNC6(mp);

	FUNC14(mp, INT_MASK_EXT, INT_EXT_LINK_PHY | INT_EXT_TX);
	FUNC14(mp, INT_MASK, mp->int_mask);

	return 0;


out_free:
	for (i = 0; i < mp->rxq_count; i++)
		FUNC9(mp->rxq + i);
out:
	FUNC1(dev->irq, dev);

	return err;
}