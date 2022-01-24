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
struct rocker_port {int /*<<< orphan*/  napi_rx; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  proto_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct rocker_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rocker_port*) ; 
 int /*<<< orphan*/  rocker_driver_name ; 
 int /*<<< orphan*/  FUNC6 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker_port*) ; 
 int FUNC9 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct rocker_port*,int) ; 
 int /*<<< orphan*/  rocker_rx_irq_handler ; 
 int /*<<< orphan*/  rocker_tx_irq_handler ; 
 int FUNC11 (struct rocker_port*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct rocker_port *rocker_port = FUNC3(dev);
	int err;

	err = FUNC9(rocker_port);
	if (err)
		return err;

	err = FUNC5(FUNC7(rocker_port),
			  rocker_tx_irq_handler, 0,
			  rocker_driver_name, rocker_port);
	if (err) {
		FUNC2(rocker_port->dev, "cannot assign tx irq\n");
		goto err_request_tx_irq;
	}

	err = FUNC5(FUNC6(rocker_port),
			  rocker_rx_irq_handler, 0,
			  rocker_driver_name, rocker_port);
	if (err) {
		FUNC2(rocker_port->dev, "cannot assign rx irq\n");
		goto err_request_rx_irq;
	}

	err = FUNC11(rocker_port);
	if (err) {
		FUNC2(rocker_port->dev, "cannot open port in world\n");
		goto err_world_port_open;
	}

	FUNC1(&rocker_port->napi_tx);
	FUNC1(&rocker_port->napi_rx);
	if (!dev->proto_down)
		FUNC10(rocker_port, true);
	FUNC4(dev);
	return 0;

err_world_port_open:
	FUNC0(FUNC6(rocker_port), rocker_port);
err_request_rx_irq:
	FUNC0(FUNC7(rocker_port), rocker_port);
err_request_tx_irq:
	FUNC8(rocker_port);
	return err;
}