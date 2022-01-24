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
struct nfp_flower_priv {int /*<<< orphan*/  non_repr_priv; } ;
struct nfp_flower_non_repr_priv {int /*<<< orphan*/  list; struct net_device* netdev; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_flower_non_repr_priv*) ; 
 struct nfp_flower_non_repr_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfp_flower_non_repr_priv* FUNC3 (struct nfp_app*,struct net_device*) ; 

struct nfp_flower_non_repr_priv *
FUNC4(struct nfp_app *app, struct net_device *netdev)
{
	struct nfp_flower_priv *priv = app->priv;
	struct nfp_flower_non_repr_priv *entry;

	entry = FUNC3(app, netdev);
	if (entry)
		goto inc_ref;

	entry = FUNC1(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return NULL;

	entry->netdev = netdev;
	FUNC2(&entry->list, &priv->non_repr_priv);

inc_ref:
	FUNC0(entry);
	return entry;
}