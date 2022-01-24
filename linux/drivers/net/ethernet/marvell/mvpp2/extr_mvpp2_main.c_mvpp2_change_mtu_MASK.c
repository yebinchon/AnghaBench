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
struct net_device {int mtu; } ;
struct mvpp2_port {scalar_t__ pkt_size; TYPE_2__* dev; struct mvpp2* priv; } ;
struct mvpp2 {int port_count; struct mvpp2_port** port_list; scalar_t__ percpu_pools; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int mtu; TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ MVPP2_BM_LONG_PKT_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int) ; 
 int FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int,int) ; 
 struct mvpp2_port* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,int) ; 
 int FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev, int mtu)
{
	struct mvpp2_port *port = FUNC12(dev);
	bool running = FUNC14(dev);
	struct mvpp2 *priv = port->priv;
	int err;

	if (!FUNC1(FUNC2(mtu), 8)) {
		FUNC11(dev, "illegal MTU value %d, round to %d\n", mtu,
			    FUNC0(FUNC2(mtu), 8));
		mtu = FUNC0(FUNC2(mtu), 8);
	}

	if (FUNC2(mtu) > MVPP2_BM_LONG_PKT_SIZE) {
		if (priv->percpu_pools) {
			FUNC13(dev, "mtu %d too high, switching to shared buffers", mtu);
			FUNC4(priv, false);
		}
	} else {
		bool jumbo = false;
		int i;

		for (i = 0; i < priv->port_count; i++)
			if (priv->port_list[i] != port &&
			    FUNC2(priv->port_list[i]->dev->mtu) >
			    MVPP2_BM_LONG_PKT_SIZE) {
				jumbo = true;
				break;
			}

		/* No port is using jumbo frames */
		if (!jumbo) {
			FUNC3(port->dev->dev.parent,
				 "all ports have a low MTU, switching to per-cpu buffers");
			FUNC4(priv, true);
		}
	}

	if (running)
		FUNC9(port);

	err = FUNC5(dev, mtu);
	if (err) {
		FUNC10(dev, "failed to change MTU\n");
		/* Reconfigure BM to the original MTU */
		FUNC5(dev, dev->mtu);
	} else {
		port->pkt_size =  FUNC2(mtu);
	}

	if (running) {
		FUNC8(port);
		FUNC6(port);
		FUNC7(port);
	}

	return err;
}