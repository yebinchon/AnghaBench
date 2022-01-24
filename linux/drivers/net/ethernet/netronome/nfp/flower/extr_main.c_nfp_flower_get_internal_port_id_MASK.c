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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  port_ids; } ;
struct nfp_flower_priv {TYPE_1__ internal_ports; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFP_MAX_INT_PORT_ID ; 
 int /*<<< orphan*/  NFP_MIN_INT_PORT_ID ; 
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct nfp_flower_priv*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct nfp_app *app, struct net_device *netdev)
{
	struct nfp_flower_priv *priv = app->priv;
	int id;

	id = FUNC3(priv, netdev);
	if (id > 0)
		return id;

	FUNC1(GFP_ATOMIC);
	FUNC4(&priv->internal_ports.lock);
	id = FUNC0(&priv->internal_ports.port_ids, netdev,
		       NFP_MIN_INT_PORT_ID, NFP_MAX_INT_PORT_ID, GFP_ATOMIC);
	FUNC5(&priv->internal_ports.lock);
	FUNC2();

	return id;
}