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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct cpsw_slave {struct net_device* ndev; } ;
struct cpsw_priv {int /*<<< orphan*/  dev; struct cpsw_common* cpsw; } ;
struct TYPE_5__ {int slaves; } ;
struct cpsw_common {int speed; struct cpsw_slave* slaves; TYPE_2__ data; int /*<<< orphan*/  dev; TYPE_1__* txv; int /*<<< orphan*/  dma; } ;
struct TYPE_6__ {int tx_maxrate; } ;
struct TYPE_4__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC4 (struct net_device*,int) ; 
 struct cpsw_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev, int queue, u32 rate)
{
	struct cpsw_priv *priv = FUNC5(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	struct cpsw_slave *slave;
	u32 min_rate;
	u32 ch_rate;
	int i, ret;

	ch_rate = FUNC4(ndev, queue)->tx_maxrate;
	if (ch_rate == rate)
		return 0;

	ch_rate = rate * 1000;
	min_rate = FUNC0(cpsw->dma);
	if ((ch_rate < min_rate && ch_rate)) {
		FUNC3(priv->dev, "The channel rate cannot be less than %dMbps",
			min_rate);
		return -EINVAL;
	}

	if (rate > cpsw->speed) {
		FUNC3(priv->dev, "The channel rate cannot be more than 2Gbps");
		return -EINVAL;
	}

	ret = FUNC6(cpsw->dev);
	if (ret < 0) {
		FUNC8(cpsw->dev);
		return ret;
	}

	ret = FUNC1(cpsw->txv[queue].ch, ch_rate);
	FUNC7(cpsw->dev);

	if (ret)
		return ret;

	/* update rates for slaves tx queues */
	for (i = 0; i < cpsw->data.slaves; i++) {
		slave = &cpsw->slaves[i];
		if (!slave->ndev)
			continue;

		FUNC4(slave->ndev, queue)->tx_maxrate = rate;
	}

	FUNC2(cpsw);
	return ret;
}