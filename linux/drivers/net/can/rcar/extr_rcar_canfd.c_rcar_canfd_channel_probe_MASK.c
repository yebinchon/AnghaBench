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
typedef  void* u32 ;
struct rcar_canfd_global {struct rcar_canfd_channel** ch; scalar_t__ fdmode; int /*<<< orphan*/  base; struct platform_device* pdev; } ;
struct TYPE_3__ {size_t freq; } ;
struct TYPE_4__ {int /*<<< orphan*/  do_get_berr_counter; int /*<<< orphan*/  do_set_mode; void* ctrlmode_supported; int /*<<< orphan*/ * bittiming_const; int /*<<< orphan*/ * data_bittiming_const; TYPE_1__ clock; } ;
struct rcar_canfd_channel {size_t channel; int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_lock; struct rcar_canfd_global* gpriv; TYPE_2__ can; int /*<<< orphan*/  base; struct net_device* ndev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 void* CAN_CTRLMODE_BERR_REPORTING ; 
 int /*<<< orphan*/  CAN_CTRLMODE_FD ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  RCANFD_FIFO_DEPTH ; 
 int /*<<< orphan*/  RCANFD_NAPI_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct rcar_canfd_channel* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcar_canfd_bittiming_const ; 
 int /*<<< orphan*/  rcar_canfd_data_bittiming_const ; 
 int /*<<< orphan*/  rcar_canfd_do_set_mode ; 
 int /*<<< orphan*/  rcar_canfd_get_berr_counter ; 
 int /*<<< orphan*/  rcar_canfd_netdev_ops ; 
 int /*<<< orphan*/  rcar_canfd_nom_bittiming_const ; 
 int /*<<< orphan*/  rcar_canfd_rx_poll ; 
 int FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct rcar_canfd_global *gpriv, u32 ch,
				    u32 fcan_freq)
{
	struct platform_device *pdev = gpriv->pdev;
	struct rcar_canfd_channel *priv;
	struct net_device *ndev;
	int err = -ENODEV;

	ndev = FUNC1(sizeof(*priv), RCANFD_FIFO_DEPTH);
	if (!ndev) {
		FUNC3(&pdev->dev, "alloc_candev() failed\n");
		err = -ENOMEM;
		goto fail;
	}
	priv = FUNC7(ndev);

	ndev->netdev_ops = &rcar_canfd_netdev_ops;
	ndev->flags |= IFF_ECHO;
	priv->ndev = ndev;
	priv->base = gpriv->base;
	priv->channel = ch;
	priv->can.clock.freq = fcan_freq;
	FUNC4(&pdev->dev, "can_clk rate is %u\n", priv->can.clock.freq);

	if (gpriv->fdmode) {
		priv->can.bittiming_const = &rcar_canfd_nom_bittiming_const;
		priv->can.data_bittiming_const =
			&rcar_canfd_data_bittiming_const;

		/* Controller starts in CAN FD only mode */
		FUNC2(ndev, CAN_CTRLMODE_FD);
		priv->can.ctrlmode_supported = CAN_CTRLMODE_BERR_REPORTING;
	} else {
		/* Controller starts in Classical CAN only mode */
		priv->can.bittiming_const = &rcar_canfd_bittiming_const;
		priv->can.ctrlmode_supported = CAN_CTRLMODE_BERR_REPORTING;
	}

	priv->can.do_set_mode = rcar_canfd_do_set_mode;
	priv->can.do_get_berr_counter = rcar_canfd_get_berr_counter;
	priv->gpriv = gpriv;
	FUNC0(ndev, &pdev->dev);

	FUNC8(ndev, &priv->napi, rcar_canfd_rx_poll,
		       RCANFD_NAPI_WEIGHT);
	err = FUNC10(ndev);
	if (err) {
		FUNC3(&pdev->dev,
			"register_candev() failed, error %d\n", err);
		goto fail_candev;
	}
	FUNC11(&priv->tx_lock);
	FUNC5(ndev);
	gpriv->ch[priv->channel] = priv;
	FUNC4(&pdev->dev, "device registered (channel %u)\n", priv->channel);
	return 0;

fail_candev:
	FUNC9(&priv->napi);
	FUNC6(ndev);
fail:
	return err;
}