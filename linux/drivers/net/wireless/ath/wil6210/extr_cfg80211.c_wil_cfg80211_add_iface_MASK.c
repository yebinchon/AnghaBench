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
struct wireless_dev {int iftype; int* address; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {TYPE_1__* wiphy; struct wireless_dev* p2p_wdev; struct net_device* main_ndev; } ;
struct vif_params {int* macaddr; } ;
struct net_device {int* perm_addr; int* dev_addr; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int /*<<< orphan*/  n_iface_combinations; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct wireless_dev* FUNC0 (struct wil6210_vif*) ; 
 struct wireless_dev* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct wil6210_vif*) ; 
 int NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 scalar_t__ FUNC4 (int*) ; 
 struct wireless_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct wil6210_vif*) ; 
 struct wireless_dev* FUNC7 (struct wil6210_vif*) ; 
 int FUNC8 (struct wil6210_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct wil6210_priv*,char*,int,int,int*) ; 
 int FUNC12 (struct wil6210_priv*,struct wil6210_vif*) ; 
 struct wil6210_vif* FUNC13 (struct wil6210_priv*,char const*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wil6210_vif*) ; 
 struct wil6210_priv* FUNC15 (struct wiphy*) ; 

__attribute__((used)) static struct wireless_dev *
FUNC16(struct wiphy *wiphy, const char *name,
		       unsigned char name_assign_type,
		       enum nl80211_iftype type,
		       struct vif_params *params)
{
	struct wil6210_priv *wil = FUNC15(wiphy);
	struct net_device *ndev_main = wil->main_ndev, *ndev;
	struct wil6210_vif *vif;
	struct wireless_dev *p2p_wdev, *wdev;
	int rc;

	FUNC9(wil, "add_iface, type %d\n", type);

	/* P2P device is not a real virtual interface, it is a management-only
	 * interface that shares the main interface.
	 * Skip concurrency checks here.
	 */
	if (type == NL80211_IFTYPE_P2P_DEVICE) {
		if (wil->p2p_wdev) {
			FUNC10(wil, "P2P_DEVICE interface already created\n");
			return FUNC1(-EINVAL);
		}

		p2p_wdev = FUNC5(sizeof(*p2p_wdev), GFP_KERNEL);
		if (!p2p_wdev)
			return FUNC1(-ENOMEM);

		p2p_wdev->iftype = type;
		p2p_wdev->wiphy = wiphy;
		/* use our primary ethernet address */
		FUNC3(p2p_wdev->address, ndev_main->perm_addr);

		wil->p2p_wdev = p2p_wdev;

		return p2p_wdev;
	}

	if (!wil->wiphy->n_iface_combinations) {
		FUNC10(wil, "virtual interfaces not supported\n");
		return FUNC1(-EINVAL);
	}

	rc = FUNC8(wil, type);
	if (rc) {
		FUNC10(wil, "iface validation failed, err=%d\n", rc);
		return FUNC1(rc);
	}

	vif = FUNC13(wil, name, name_assign_type, type);
	if (FUNC2(vif))
		return FUNC0(vif);

	ndev = FUNC6(vif);
	FUNC3(ndev->perm_addr, ndev_main->perm_addr);
	if (FUNC4(params->macaddr)) {
		FUNC3(ndev->dev_addr, params->macaddr);
	} else {
		FUNC3(ndev->dev_addr, ndev_main->perm_addr);
		ndev->dev_addr[0] = (ndev->dev_addr[0] ^ (1 << vif->mid)) |
			0x2; /* locally administered */
	}
	wdev = FUNC7(vif);
	FUNC3(wdev->address, ndev->dev_addr);

	rc = FUNC12(wil, vif);
	if (rc)
		goto out;

	FUNC11(wil, "added VIF, mid %d iftype %d MAC %pM\n",
		 vif->mid, type, wdev->address);
	return wdev;
out:
	FUNC14(vif);
	return FUNC1(rc);
}