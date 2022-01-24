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
struct TYPE_2__ {int /*<<< orphan*/  port_ids; } ;
struct nfp_flower_priv {TYPE_1__ internal_ports; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static struct net_device *
FUNC3(struct nfp_app *app, int port_id)
{
	struct nfp_flower_priv *priv = app->priv;
	struct net_device *netdev;

	FUNC1();
	netdev = FUNC0(&priv->internal_ports.port_ids, port_id);
	FUNC2();

	return netdev;
}