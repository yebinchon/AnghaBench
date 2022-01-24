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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int flags; } ;
struct bnad {TYPE_1__* rx_info; int /*<<< orphan*/  cfg_flags; int /*<<< orphan*/  bna; struct net_device* netdev; } ;
typedef  enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_4__ {int num_mcmac; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_CF_ALLMULTI ; 
 int BNA_CB_SUCCESS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_ALLMULTI ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * bnad_bcast_addr ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 

__attribute__((used)) static void
FUNC9(struct bnad *bnad)
{
	struct net_device *netdev = bnad->netdev;
	int mc_count = FUNC7(netdev);
	enum bna_cb_status ret;
	u8 *mac_list;

	if (netdev->flags & IFF_ALLMULTI)
		goto mode_allmulti;

	if (FUNC8(netdev))
		return;

	if (mc_count > FUNC0(&bnad->bna)->num_mcmac)
		goto mode_allmulti;

	mac_list = FUNC5(mc_count + 1, ETH_ALEN, GFP_ATOMIC);

	if (mac_list == NULL)
		goto mode_allmulti;

	FUNC4(&mac_list[0], &bnad_bcast_addr[0]);

	/* copy rest of the MCAST addresses */
	FUNC3(netdev, mac_list);
	ret = FUNC2(bnad->rx_info[0].rx, mc_count + 1, mac_list);
	FUNC6(mac_list);

	if (ret != BNA_CB_SUCCESS)
		goto mode_allmulti;

	return;

mode_allmulti:
	bnad->cfg_flags |= BNAD_CF_ALLMULTI;
	FUNC1(bnad->rx_info[0].rx);
}