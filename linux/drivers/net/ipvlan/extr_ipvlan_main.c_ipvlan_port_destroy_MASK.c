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
struct sk_buff {scalar_t__ dev; } ;
struct net_device {int dummy; } ;
struct ipvl_port {scalar_t__ mode; int /*<<< orphan*/  ida; int /*<<< orphan*/  backlog; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 scalar_t__ IPVLAN_MODE_L3S ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ipvl_port*) ; 
 struct ipvl_port* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct ipvl_port *port = FUNC5(dev);
	struct sk_buff *skb;

	if (port->mode == IPVLAN_MODE_L3S)
		FUNC4(port);
	FUNC8(dev);
	FUNC1(&port->wq);
	while ((skb = FUNC0(&port->backlog)) != NULL) {
		if (skb->dev)
			FUNC2(skb->dev);
		FUNC7(skb);
	}
	FUNC3(&port->ida);
	FUNC6(port);
}