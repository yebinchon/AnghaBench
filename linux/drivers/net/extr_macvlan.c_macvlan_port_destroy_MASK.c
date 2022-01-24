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
struct sockaddr {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  priv_flags; } ;
struct macvlan_port {TYPE_1__* dev; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  bc_queue; int /*<<< orphan*/  bc_work; } ;
struct macvlan_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct macvlan_dev* src; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  type; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_MACVLAN_PORT ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct macvlan_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct macvlan_port*) ; 
 struct macvlan_port* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct macvlan_port *port = FUNC9(dev);
	struct sk_buff *skb;

	dev->priv_flags &= ~IFF_MACVLAN_PORT;
	FUNC11(dev);

	/* After this point, no packet can schedule bc_work anymore,
	 * but we need to cancel it and purge left skbs if any.
	 */
	FUNC2(&port->bc_work);

	while ((skb = FUNC1(&port->bc_queue))) {
		const struct macvlan_dev *src = FUNC0(skb)->src;

		if (src)
			FUNC3(src->dev);

		FUNC7(skb);
	}

	/* If the lower device address has been changed by passthru
	 * macvlan, put it back.
	 */
	if (FUNC8(port) &&
	    !FUNC5(port->dev->dev_addr, port->perm_addr)) {
		struct sockaddr sa;

		sa.sa_family = port->dev->type;
		FUNC10(&sa.sa_data, port->perm_addr, port->dev->addr_len);
		FUNC4(port->dev, &sa, NULL);
	}

	FUNC6(port);
}