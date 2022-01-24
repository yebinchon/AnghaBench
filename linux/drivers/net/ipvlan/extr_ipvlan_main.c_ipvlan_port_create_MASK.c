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
struct net_device {int dummy; } ;
struct ipvl_port {int dev_id_start; int /*<<< orphan*/  ida; int /*<<< orphan*/  wq; int /*<<< orphan*/  backlog; int /*<<< orphan*/ * hlhead; int /*<<< orphan*/  ipvlans; int /*<<< orphan*/  mode; struct net_device* dev; int /*<<< orphan*/  pnet; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IPVLAN_HASH_SIZE ; 
 int /*<<< orphan*/  IPVLAN_MODE_L3 ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipvlan_handle_frame ; 
 int /*<<< orphan*/  ipvlan_process_multicast ; 
 int /*<<< orphan*/  FUNC5 (struct ipvl_port*) ; 
 struct ipvl_port* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ,struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct ipvl_port *port;
	int err, idx;

	port = FUNC6(sizeof(struct ipvl_port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	FUNC9(&port->pnet, FUNC3(dev));
	port->dev = dev;
	port->mode = IPVLAN_MODE_L3;
	FUNC1(&port->ipvlans);
	for (idx = 0; idx < IPVLAN_HASH_SIZE; idx++)
		FUNC0(&port->hlhead[idx]);

	FUNC8(&port->backlog);
	FUNC2(&port->wq, ipvlan_process_multicast);
	FUNC4(&port->ida);
	port->dev_id_start = 1;

	err = FUNC7(dev, ipvlan_handle_frame, port);
	if (err)
		goto err;

	return 0;

err:
	FUNC5(port);
	return err;
}