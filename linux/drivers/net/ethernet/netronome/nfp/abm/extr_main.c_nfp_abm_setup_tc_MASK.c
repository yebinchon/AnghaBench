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
struct nfp_repr {int /*<<< orphan*/  app_priv; } ;
struct nfp_port {scalar_t__ type; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ NFP_PORT_PF_PORT ; 
#define  TC_SETUP_BLOCK 132 
#define  TC_SETUP_QDISC_GRED 131 
#define  TC_SETUP_QDISC_MQ 130 
#define  TC_SETUP_QDISC_RED 129 
#define  TC_SETUP_ROOT_QDISC 128 
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,struct nfp_repr*,void*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,void*) ; 
 struct nfp_port* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct nfp_app *app, struct net_device *netdev,
		 enum tc_setup_type type, void *type_data)
{
	struct nfp_repr *repr = FUNC0(netdev);
	struct nfp_port *port;

	port = FUNC6(netdev);
	if (!port || port->type != NFP_PORT_PF_PORT)
		return -EOPNOTSUPP;

	switch (type) {
	case TC_SETUP_ROOT_QDISC:
		return FUNC2(netdev, repr->app_priv, type_data);
	case TC_SETUP_QDISC_MQ:
		return FUNC4(netdev, repr->app_priv, type_data);
	case TC_SETUP_QDISC_RED:
		return FUNC5(netdev, repr->app_priv, type_data);
	case TC_SETUP_QDISC_GRED:
		return FUNC3(netdev, repr->app_priv, type_data);
	case TC_SETUP_BLOCK:
		return FUNC1(netdev, repr, type_data);
	default:
		return -EOPNOTSUPP;
	}
}