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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_vif {int def_wep_key_idx; int /*<<< orphan*/  vdev_id; struct ath10k* ar; TYPE_1__* vif; int /*<<< orphan*/ ** wep_keys; } ;
struct ath10k_peer {int /*<<< orphan*/ ** keys; } ;
struct TYPE_6__ {TYPE_2__* vdev_param; } ;
struct ath10k {TYPE_3__ wmi; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  conf_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  def_keyid; } ;
struct TYPE_4__ {int type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int EINVAL ; 
 int ENOENT ; 
#define  NL80211_IFTYPE_ADHOC 129 
#define  NL80211_IFTYPE_AP 128 
 int NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  SET_KEY ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WMI_KEY_GROUP ; 
 int /*<<< orphan*/  WMI_KEY_PAIRWISE ; 
 int /*<<< orphan*/  WMI_KEY_TX_USAGE ; 
 int FUNC2 (struct ath10k_vif*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct ath10k_peer* FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ath10k_vif *arvif,
					const u8 *addr)
{
	struct ath10k *ar = arvif->ar;
	struct ath10k_peer *peer;
	int ret;
	int i;
	u32 flags;

	FUNC6(&ar->conf_mutex);

	if (FUNC1(arvif->vif->type != NL80211_IFTYPE_AP &&
		    arvif->vif->type != NL80211_IFTYPE_ADHOC &&
		    arvif->vif->type != NL80211_IFTYPE_MESH_POINT))
		return -EINVAL;

	FUNC7(&ar->data_lock);
	peer = FUNC3(ar, arvif->vdev_id, addr);
	FUNC8(&ar->data_lock);

	if (!peer)
		return -ENOENT;

	for (i = 0; i < FUNC0(arvif->wep_keys); i++) {
		if (arvif->wep_keys[i] == NULL)
			continue;

		switch (arvif->vif->type) {
		case NL80211_IFTYPE_AP:
			flags = WMI_KEY_PAIRWISE;

			if (arvif->def_wep_key_idx == i)
				flags |= WMI_KEY_TX_USAGE;

			ret = FUNC2(arvif, arvif->wep_keys[i],
						 SET_KEY, addr, flags);
			if (ret < 0)
				return ret;
			break;
		case NL80211_IFTYPE_ADHOC:
			ret = FUNC2(arvif, arvif->wep_keys[i],
						 SET_KEY, addr,
						 WMI_KEY_PAIRWISE);
			if (ret < 0)
				return ret;

			ret = FUNC2(arvif, arvif->wep_keys[i],
						 SET_KEY, addr, WMI_KEY_GROUP);
			if (ret < 0)
				return ret;
			break;
		default:
			FUNC1(1);
			return -EINVAL;
		}

		FUNC7(&ar->data_lock);
		peer->keys[i] = arvif->wep_keys[i];
		FUNC8(&ar->data_lock);
	}

	/* In some cases (notably with static WEP IBSS with multiple keys)
	 * multicast Tx becomes broken. Both pairwise and groupwise keys are
	 * installed already. Using WMI_KEY_TX_USAGE in different combinations
	 * didn't seem help. Using def_keyid vdev parameter seems to be
	 * effective so use that.
	 *
	 * FIXME: Revisit. Perhaps this can be done in a less hacky way.
	 */
	if (arvif->vif->type != NL80211_IFTYPE_ADHOC)
		return 0;

	if (arvif->def_wep_key_idx == -1)
		return 0;

	ret = FUNC5(arvif->ar,
					arvif->vdev_id,
					arvif->ar->wmi.vdev_param->def_keyid,
					arvif->def_wep_key_idx);
	if (ret) {
		FUNC4(ar, "failed to re-set def wpa key idxon vdev %i: %d\n",
			    arvif->vdev_id, ret);
		return ret;
	}

	return 0;
}