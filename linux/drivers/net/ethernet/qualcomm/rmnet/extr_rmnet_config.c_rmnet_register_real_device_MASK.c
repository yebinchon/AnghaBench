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
struct rmnet_port {int /*<<< orphan*/ * muxed_ep; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int RMNET_MAX_LOGICAL_EP ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rmnet_port*) ; 
 struct rmnet_port* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ,struct rmnet_port*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  rmnet_rx_handler ; 

__attribute__((used)) static int FUNC8(struct net_device *real_dev)
{
	struct rmnet_port *port;
	int rc, entry;

	FUNC0();

	if (FUNC7(real_dev))
		return 0;

	port = FUNC4(sizeof(*port), GFP_ATOMIC);
	if (!port)
		return -ENOMEM;

	port->dev = real_dev;
	rc = FUNC6(real_dev, rmnet_rx_handler, port);
	if (rc) {
		FUNC3(port);
		return -EBUSY;
	}

	/* hold on to real dev for MAP data */
	FUNC2(real_dev);

	for (entry = 0; entry < RMNET_MAX_LOGICAL_EP; entry++)
		FUNC1(&port->muxed_ep[entry]);

	FUNC5(real_dev, "registered with rmnet\n");
	return 0;
}