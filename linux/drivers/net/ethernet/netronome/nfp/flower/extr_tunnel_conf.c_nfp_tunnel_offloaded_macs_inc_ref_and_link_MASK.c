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
struct nfp_tun_offloaded_mac {int /*<<< orphan*/  ref_count; int /*<<< orphan*/  bridge_count; int /*<<< orphan*/  repr_list; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_flower_repr_priv {int /*<<< orphan*/  mac_list; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfp_repr* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static void
FUNC5(struct nfp_tun_offloaded_mac *entry,
					   struct net_device *netdev, bool mod)
{
	if (FUNC4(netdev)) {
		struct nfp_flower_repr_priv *repr_priv;
		struct nfp_repr *repr;

		repr = FUNC2(netdev);
		repr_priv = repr->app_priv;

		/* If modifing MAC, remove repr from old list first. */
		if (mod)
			FUNC1(&repr_priv->mac_list);

		FUNC0(&repr_priv->mac_list, &entry->repr_list);
	} else if (FUNC3(netdev)) {
		entry->bridge_count++;
	}

	entry->ref_count++;
}