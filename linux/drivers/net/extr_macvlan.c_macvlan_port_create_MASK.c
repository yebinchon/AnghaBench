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
struct net_device {scalar_t__ type; int flags; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  dev_addr; } ;
struct macvlan_port {int /*<<< orphan*/  bc_work; int /*<<< orphan*/  bc_queue; int /*<<< orphan*/ * vlan_source_hash; int /*<<< orphan*/ * vlan_hash; int /*<<< orphan*/  vlans; int /*<<< orphan*/  perm_addr; struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IFF_MACVLAN_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int MACVLAN_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct macvlan_port*) ; 
 struct macvlan_port* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macvlan_handle_frame ; 
 int /*<<< orphan*/  macvlan_process_broadcast ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ,struct macvlan_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct macvlan_port *port;
	unsigned int i;
	int err;

	if (dev->type != ARPHRD_ETHER || dev->flags & IFF_LOOPBACK)
		return -EINVAL;

	if (FUNC6(dev))
		return -EBUSY;

	port = FUNC5(sizeof(*port), GFP_KERNEL);
	if (port == NULL)
		return -ENOMEM;

	port->dev = dev;
	FUNC3(port->perm_addr, dev->dev_addr);
	FUNC1(&port->vlans);
	for (i = 0; i < MACVLAN_HASH_SIZE; i++)
		FUNC0(&port->vlan_hash[i]);
	for (i = 0; i < MACVLAN_HASH_SIZE; i++)
		FUNC0(&port->vlan_source_hash[i]);

	FUNC8(&port->bc_queue);
	FUNC2(&port->bc_work, macvlan_process_broadcast);

	err = FUNC7(dev, macvlan_handle_frame, port);
	if (err)
		FUNC4(port);
	else
		dev->priv_flags |= IFF_MACVLAN_PORT;
	return err;
}