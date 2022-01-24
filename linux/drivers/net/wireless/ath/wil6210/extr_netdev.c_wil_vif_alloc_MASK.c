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
typedef  scalar_t__ u8 ;
struct wireless_dev {int iftype; struct net_device* netdev; int /*<<< orphan*/  wiphy; } ;
struct wil6210_vif {struct wireless_dev wdev; scalar_t__ mid; struct wil6210_priv* wil; struct net_device* ndev; } ;
struct wil6210_priv {int /*<<< orphan*/  wiphy; struct net_device* main_ndev; } ;
struct net_device {int needs_free_netdev; int hw_features; int features; struct wireless_dev* ieee80211_ptr; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  priv_destructor; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct wil6210_vif* FUNC0 (int /*<<< orphan*/ ) ; 
 int NETIF_F_GRO ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ U8_MAX ; 
 struct net_device* FUNC2 (int,char const*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wil6210_vif* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  wil_dev_setup ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  wil_ndev_destructor ; 
 int /*<<< orphan*/  wil_netdev_ops ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*) ; 
 scalar_t__ FUNC8 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct wil6210_vif *
FUNC11(struct wil6210_priv *wil, const char *name,
	      unsigned char name_assign_type, enum nl80211_iftype iftype)
{
	struct net_device *ndev;
	struct wireless_dev *wdev;
	struct wil6210_vif *vif;
	u8 mid;

	mid = FUNC8(wil);
	if (mid == U8_MAX) {
		FUNC5(wil, "no available virtual interface\n");
		return FUNC0(-EINVAL);
	}

	ndev = FUNC2(sizeof(*vif), name, name_assign_type,
			    wil_dev_setup);
	if (!ndev) {
		FUNC3(FUNC7(wil), "alloc_netdev failed\n");
		return FUNC0(-ENOMEM);
	}
	if (mid == 0) {
		wil->main_ndev = ndev;
	} else {
		ndev->priv_destructor = wil_ndev_destructor;
		ndev->needs_free_netdev = true;
	}

	vif = FUNC4(ndev);
	vif->ndev = ndev;
	vif->wil = wil;
	vif->mid = mid;
	FUNC9(vif);

	wdev = &vif->wdev;
	wdev->wiphy = wil->wiphy;
	wdev->iftype = iftype;

	ndev->netdev_ops = &wil_netdev_ops;
	FUNC6(ndev);
	ndev->ieee80211_ptr = wdev;
	ndev->hw_features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM |
			    NETIF_F_SG | NETIF_F_GRO |
			    NETIF_F_TSO | NETIF_F_TSO6;

	ndev->features |= ndev->hw_features;
	FUNC1(ndev, FUNC10(wdev->wiphy));
	wdev->netdev = ndev;
	return vif;
}