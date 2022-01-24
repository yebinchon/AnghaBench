#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;
struct team_port {TYPE_1__ orig; int /*<<< orphan*/  list; } ;
struct team {struct net_device* dev; } ;
struct net_device {char* name; int flags; } ;

/* Variables and functions */
 int ENOENT ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct team*) ; 
 int /*<<< orphan*/  FUNC1 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct team*) ; 
 int /*<<< orphan*/  FUNC4 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct team_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC16 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC17 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC18 (struct team*,struct team_port*) ; 
 struct team_port* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC21 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC22 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC24(struct team *team, struct net_device *port_dev)
{
	struct net_device *dev = team->dev;
	struct team_port *port;
	char *portname = port_dev->name;

	port = FUNC19(port_dev);
	if (!port || !FUNC18(team, port)) {
		FUNC13(dev, "Device %s does not act as a port of this team\n",
			   portname);
		return -ENOENT;
	}

	FUNC16(team, port);
	FUNC12(&port->list);

	if (dev->flags & IFF_PROMISC)
		FUNC9(port_dev, -1);
	if (dev->flags & IFF_ALLMULTI)
		FUNC7(port_dev, -1);

	FUNC22(team, port);
	FUNC15(port_dev);
	FUNC17(port);
	FUNC23(port_dev, dev);
	FUNC10(port_dev, dev);
	FUNC6(port_dev, dev);
	FUNC5(port_dev);
	FUNC20(team, port);

	FUNC2(team, port);
	FUNC3(team);
	FUNC1(team, port);
	FUNC4(port);

	FUNC21(port);
	FUNC8(port_dev, port->orig.mtu);
	FUNC11(port, rcu);
	FUNC14(dev, "Port device %s removed\n", portname);
	FUNC0(team);

	return 0;
}