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
struct TYPE_3__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; scalar_t__ linkup; } ;
struct team_port {int changed; TYPE_1__ state; scalar_t__ removed; TYPE_2__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TEAM_ATTR_ITEM_PORT ; 
 int /*<<< orphan*/  TEAM_ATTR_PORT_CHANGED ; 
 int /*<<< orphan*/  TEAM_ATTR_PORT_DUPLEX ; 
 int /*<<< orphan*/  TEAM_ATTR_PORT_IFINDEX ; 
 int /*<<< orphan*/  TEAM_ATTR_PORT_LINKUP ; 
 int /*<<< orphan*/  TEAM_ATTR_PORT_REMOVED ; 
 int /*<<< orphan*/  TEAM_ATTR_PORT_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				     struct team_port *port)
{
	struct nlattr *port_item;

	port_item = FUNC2(skb, TEAM_ATTR_ITEM_PORT);
	if (!port_item)
		goto nest_cancel;
	if (FUNC4(skb, TEAM_ATTR_PORT_IFINDEX, port->dev->ifindex))
		goto nest_cancel;
	if (port->changed) {
		if (FUNC3(skb, TEAM_ATTR_PORT_CHANGED))
			goto nest_cancel;
		port->changed = false;
	}
	if ((port->removed &&
	     FUNC3(skb, TEAM_ATTR_PORT_REMOVED)) ||
	    (port->state.linkup &&
	     FUNC3(skb, TEAM_ATTR_PORT_LINKUP)) ||
	    FUNC4(skb, TEAM_ATTR_PORT_SPEED, port->state.speed) ||
	    FUNC5(skb, TEAM_ATTR_PORT_DUPLEX, port->state.duplex))
		goto nest_cancel;
	FUNC1(skb, port_item);
	return 0;

nest_cancel:
	FUNC0(skb, port_item);
	return -EMSGSIZE;
}