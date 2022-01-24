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
typedef  int u16 ;
struct nfp_tun_offloaded_mac {int index; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  repr_list; int /*<<< orphan*/  addr; scalar_t__ bridge_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_off_ids; int /*<<< orphan*/  offloaded_macs; } ;
struct nfp_flower_priv {TYPE_1__ tun; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NFP_MAX_MAC_INDEX ; 
 int NFP_TUN_PRE_TUN_IDX_BIT ; 
 int FUNC1 (struct nfp_app*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_tun_offloaded_mac*) ; 
 struct nfp_tun_offloaded_mac* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 struct nfp_tun_offloaded_mac* FUNC11 (struct nfp_app*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_tun_offloaded_mac*,struct net_device*,int) ; 
 int /*<<< orphan*/  offloaded_macs_params ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct nfp_app *app, struct net_device *netdev,
			  int port, bool mod)
{
	struct nfp_flower_priv *priv = app->priv;
	int ida_idx = NFP_MAX_MAC_INDEX, err;
	struct nfp_tun_offloaded_mac *entry;
	u16 nfp_mac_idx = 0;

	entry = FUNC11(app, netdev->dev_addr);
	if (entry && FUNC10(entry->index)) {
		if (entry->bridge_count ||
		    !FUNC7(netdev)) {
			FUNC12(entry,
								   netdev, mod);
			return 0;
		}

		/* MAC is global but matches need to go to pre_tun table. */
		nfp_mac_idx = entry->index | NFP_TUN_PRE_TUN_IDX_BIT;
	}

	if (!nfp_mac_idx) {
		/* Assign a global index if non-repr or MAC is now shared. */
		if (entry || !port) {
			ida_idx = FUNC3(&priv->tun.mac_off_ids, 0,
						 NFP_MAX_MAC_INDEX, GFP_KERNEL);
			if (ida_idx < 0)
				return ida_idx;

			nfp_mac_idx =
				FUNC8(ida_idx);

			if (FUNC7(netdev))
				nfp_mac_idx |= NFP_TUN_PRE_TUN_IDX_BIT;

		} else {
			nfp_mac_idx =
				FUNC9(port);
		}
	}

	if (!entry) {
		entry = FUNC6(sizeof(*entry), GFP_KERNEL);
		if (!entry) {
			err = -ENOMEM;
			goto err_free_ida;
		}

		FUNC2(entry->addr, netdev->dev_addr);
		FUNC0(&entry->repr_list);

		if (FUNC13(&priv->tun.offloaded_macs,
					   &entry->ht_node,
					   offloaded_macs_params)) {
			err = -ENOMEM;
			goto err_free_entry;
		}
	}

	err = FUNC1(app, netdev->dev_addr,
				       nfp_mac_idx, false);
	if (err) {
		/* If not shared then free. */
		if (!entry->ref_count)
			goto err_remove_hash;
		goto err_free_ida;
	}

	entry->index = nfp_mac_idx;
	FUNC12(entry, netdev, mod);

	return 0;

err_remove_hash:
	FUNC14(&priv->tun.offloaded_macs, &entry->ht_node,
			       offloaded_macs_params);
err_free_entry:
	FUNC5(entry);
err_free_ida:
	if (ida_idx != NFP_MAX_MAC_INDEX)
		FUNC4(&priv->tun.mac_off_ids, ida_idx);

	return err;
}