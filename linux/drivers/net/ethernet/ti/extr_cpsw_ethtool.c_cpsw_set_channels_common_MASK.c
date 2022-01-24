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
struct net_device {int dummy; } ;
struct ethtool_channels {scalar_t__ rx_count; scalar_t__ tx_count; } ;
struct cpsw_priv {int /*<<< orphan*/  dev; struct cpsw_common* cpsw; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {scalar_t__ rx_ch_num; int /*<<< orphan*/  tx_ch_num; TYPE_2__* slaves; TYPE_1__ data; scalar_t__ usage_count; } ;
typedef  int /*<<< orphan*/  cpdma_handler_fn ;
struct TYPE_4__ {struct net_device* ndev; } ;

/* Variables and functions */
 int FUNC0 (struct cpsw_common*,struct ethtool_channels*) ; 
 int FUNC1 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_common*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct cpsw_priv*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct cpsw_priv* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*,scalar_t__) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 

int FUNC13(struct net_device *ndev,
			     struct ethtool_channels *chs,
			     cpdma_handler_fn rx_handler)
{
	struct cpsw_priv *priv = FUNC9(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	struct net_device *sl_ndev;
	int i, new_pools, ret;

	ret = FUNC0(cpsw, chs);
	if (ret < 0)
		return ret;

	FUNC6(ndev);

	new_pools = (chs->rx_count != cpsw->rx_ch_num) && cpsw->usage_count;

	ret = FUNC7(priv, chs->rx_count, 1, rx_handler);
	if (ret)
		goto err;

	ret = FUNC7(priv, chs->tx_count, 0, rx_handler);
	if (ret)
		goto err;

	for (i = 0; i < cpsw->data.slaves; i++) {
		sl_ndev = cpsw->slaves[i].ndev;
		if (!(sl_ndev && FUNC10(sl_ndev)))
			continue;

		/* Inform stack about new count of queues */
		ret = FUNC12(sl_ndev, cpsw->tx_ch_num);
		if (ret) {
			FUNC8(priv->dev, "cannot set real number of tx queues\n");
			goto err;
		}

		ret = FUNC11(sl_ndev, cpsw->rx_ch_num);
		if (ret) {
			FUNC8(priv->dev, "cannot set real number of rx queues\n");
			goto err;
		}
	}

	FUNC5(cpsw);

	if (new_pools) {
		FUNC2(cpsw);
		ret = FUNC1(cpsw);
		if (ret)
			goto err;
	}

	ret = FUNC4(ndev);
	if (!ret)
		return 0;
err:
	FUNC8(priv->dev, "cannot update channels number, closing device\n");
	FUNC3(cpsw);
	return ret;
}