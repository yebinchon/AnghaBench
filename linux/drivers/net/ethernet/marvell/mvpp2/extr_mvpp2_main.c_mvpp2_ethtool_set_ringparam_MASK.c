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
typedef  void* u16 ;
struct net_device {int dummy; } ;
struct mvpp2_port {void* tx_ring_size; void* rx_ring_size; } ;
struct ethtool_ringparam {void* tx_pending; void* rx_pending; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct ethtool_ringparam*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*) ; 
 int FUNC5 (struct mvpp2_port*) ; 
 int FUNC6 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct mvpp2_port* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev,
				       struct ethtool_ringparam *ring)
{
	struct mvpp2_port *port = FUNC10(dev);
	u16 prev_rx_ring_size = port->rx_ring_size;
	u16 prev_tx_ring_size = port->tx_ring_size;
	int err;

	err = FUNC0(dev, ring);
	if (err)
		return err;

	if (!FUNC11(dev)) {
		port->rx_ring_size = ring->rx_pending;
		port->tx_ring_size = ring->tx_pending;
		return 0;
	}

	/* The interface is running, so we have to force a
	 * reallocation of the queues
	 */
	FUNC8(port);
	FUNC1(port);
	FUNC2(port);

	port->rx_ring_size = ring->rx_pending;
	port->tx_ring_size = ring->tx_pending;

	err = FUNC5(port);
	if (err) {
		/* Reallocate Rx queues with the original ring size */
		port->rx_ring_size = prev_rx_ring_size;
		ring->rx_pending = prev_rx_ring_size;
		err = FUNC5(port);
		if (err)
			goto err_out;
	}
	err = FUNC6(port);
	if (err) {
		/* Reallocate Tx queues with the original ring size */
		port->tx_ring_size = prev_tx_ring_size;
		ring->tx_pending = prev_tx_ring_size;
		err = FUNC6(port);
		if (err)
			goto err_clean_rxqs;
	}

	FUNC7(port);
	FUNC3(port);
	FUNC4(port);

	return 0;

err_clean_rxqs:
	FUNC1(port);
err_out:
	FUNC9(dev, "failed to change ring parameters");
	return err;
}