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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct nfp_flower_priv*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nfp_app *app, struct net_device *netdev)
{
	struct nfp_flower_priv *priv = app->priv;
	int id;

	id = FUNC1(priv, netdev);
	if (!id)
		return;

	FUNC2(&priv->internal_ports.lock);
	FUNC0(&priv->internal_ports.port_ids, id);
	FUNC3(&priv->internal_ports.lock);
}