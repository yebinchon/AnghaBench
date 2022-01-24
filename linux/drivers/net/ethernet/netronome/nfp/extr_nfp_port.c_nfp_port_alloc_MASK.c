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
struct nfp_port {int type; int /*<<< orphan*/  port_list; struct nfp_app* app; struct net_device* netdev; } ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
typedef  enum nfp_port_type { ____Placeholder_nfp_port_type } nfp_port_type ;
struct TYPE_2__ {int /*<<< orphan*/  ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct nfp_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nfp_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct nfp_port *
FUNC3(struct nfp_app *app, enum nfp_port_type type,
	       struct net_device *netdev)
{
	struct nfp_port *port;

	port = FUNC1(sizeof(*port), GFP_KERNEL);
	if (!port)
		return FUNC0(-ENOMEM);

	port->netdev = netdev;
	port->type = type;
	port->app = app;

	FUNC2(&port->port_list, &app->pf->ports);

	return port;
}