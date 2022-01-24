#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ variable; } ;
struct TYPE_6__ {TYPE_2__ beacon; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ath10k_vif {int /*<<< orphan*/  vdev_id; TYPE_1__* vif; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  WLAN_OUI_TYPE_WFA_P2P ; 
 int /*<<< orphan*/  WLAN_OUI_WFA ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ath10k_vif *arvif,
				       struct sk_buff *bcn)
{
	struct ath10k *ar = arvif->ar;
	struct ieee80211_mgmt *mgmt;
	const u8 *p2p_ie;
	int ret;

	if (arvif->vif->type != NL80211_IFTYPE_AP || !arvif->vif->p2p)
		return 0;

	mgmt = (void *)bcn->data;
	p2p_ie = FUNC2(WLAN_OUI_WFA, WLAN_OUI_TYPE_WFA_P2P,
					 mgmt->u.beacon.variable,
					 bcn->len - (mgmt->u.beacon.variable -
						     bcn->data));
	if (!p2p_ie)
		return -ENOENT;

	ret = FUNC1(ar, arvif->vdev_id, p2p_ie);
	if (ret) {
		FUNC0(ar, "failed to submit p2p go bcn ie for vdev %i: %d\n",
			    arvif->vdev_id, ret);
		return ret;
	}

	return 0;
}