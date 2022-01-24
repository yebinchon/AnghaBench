#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct port {int /*<<< orphan*/ * npe; int /*<<< orphan*/  napi; int /*<<< orphan*/  plat; TYPE_3__* dev; int /*<<< orphan*/  id; int /*<<< orphan*/  clock_reg; scalar_t__ clock_rate; int /*<<< orphan*/  clock_type; struct net_device* netdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  platform_data; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; } ;
struct net_device {int tx_queue_len; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  xmit; int /*<<< orphan*/  attach; } ;
typedef  TYPE_1__ hdlc_device ;

/* Variables and functions */
 int /*<<< orphan*/  CLK42X_SPEED_2048KHZ ; 
 int /*<<< orphan*/  CLOCK_EXT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAPI_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,TYPE_3__*) ; 
 struct net_device* FUNC1 (struct port*) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  hss_hdlc_attach ; 
 int /*<<< orphan*/  hss_hdlc_ops ; 
 int /*<<< orphan*/  hss_hdlc_poll ; 
 int /*<<< orphan*/  hss_hdlc_xmit ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 
 struct port* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct port*) ; 
 int FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct port *port;
	struct net_device *dev;
	hdlc_device *hdlc;
	int err;

	if ((port = FUNC5(sizeof(*port), GFP_KERNEL)) == NULL)
		return -ENOMEM;

	if ((port->npe = FUNC9(0)) == NULL) {
		err = -ENODEV;
		goto err_free;
	}

	if ((port->netdev = dev = FUNC1(port)) == NULL) {
		err = -ENOMEM;
		goto err_plat;
	}

	FUNC0(dev, &pdev->dev);
	hdlc = FUNC2(dev);
	hdlc->attach = hss_hdlc_attach;
	hdlc->xmit = hss_hdlc_xmit;
	dev->netdev_ops = &hss_hdlc_ops;
	dev->tx_queue_len = 100;
	port->clock_type = CLOCK_EXT;
	port->clock_rate = 0;
	port->clock_reg = CLK42X_SPEED_2048KHZ;
	port->id = pdev->id;
	port->dev = &pdev->dev;
	port->plat = pdev->dev.platform_data;
	FUNC7(dev, &port->napi, hss_hdlc_poll, NAPI_WEIGHT);

	if ((err = FUNC11(dev)))
		goto err_free_netdev;

	FUNC10(pdev, port);

	FUNC6(dev, "initialized\n");
	return 0;

err_free_netdev:
	FUNC3(dev);
err_plat:
	FUNC8(port->npe);
err_free:
	FUNC4(port);
	return err;
}