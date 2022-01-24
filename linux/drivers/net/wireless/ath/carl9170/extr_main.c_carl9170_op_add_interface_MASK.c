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
struct ieee80211_vif {int active; int id; int enable_beacon; int type; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; scalar_t__ drv_priv; int /*<<< orphan*/  p2p; int /*<<< orphan*/ * beacon; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_vif_info {int active; int id; int enable_beacon; int type; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; scalar_t__ drv_priv; int /*<<< orphan*/  p2p; int /*<<< orphan*/ * beacon; } ;
struct TYPE_6__ {int /*<<< orphan*/  off_override; } ;
struct TYPE_4__ {scalar_t__ tx_seq_table; int /*<<< orphan*/  vif_num; } ;
struct ar9170 {int vifs; int /*<<< orphan*/  mutex; TYPE_3__ ps; TYPE_2__* vif_priv; int /*<<< orphan*/  vif_bitmap; TYPE_1__ fw; int /*<<< orphan*/  beacon_iter; int /*<<< orphan*/  vif_list; int /*<<< orphan*/  beacon_lock; } ;
struct TYPE_5__ {int id; int /*<<< orphan*/  vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENOSPC ; 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_MESH_POINT 129 
#define  NL80211_IFTYPE_STATION 128 
 int const NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  PS_OFF_VIF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC4 (struct ar9170*) ; 
 int FUNC5 (struct ar9170*,struct ieee80211_vif*) ; 
 int FUNC6 (struct ar9170*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ar9170*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static int FUNC20(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif)
{
	struct carl9170_vif_info *vif_priv = (void *) vif->drv_priv;
	struct ieee80211_vif *main_vif, *old_main = NULL;
	struct ar9170 *ar = hw->priv;
	int vif_id = -1, err = 0;

	FUNC12(&ar->mutex);
	FUNC15();
	if (vif_priv->active) {
		/*
		 * Skip the interface structure initialization,
		 * if the vif survived the _restart call.
		 */
		vif_id = vif_priv->id;
		vif_priv->enable_beacon = false;

		FUNC17(&ar->beacon_lock);
		FUNC8(vif_priv->beacon);
		vif_priv->beacon = NULL;
		FUNC18(&ar->beacon_lock);

		goto init;
	}

	/* Because the AR9170 HW's MAC doesn't provide full support for
	 * multiple, independent interfaces [of different operation modes].
	 * We have to select ONE main interface [main mode of HW], but we
	 * can have multiple slaves [AKA: entry in the ACK-table].
	 *
	 * The first (from HEAD/TOP) interface in the ar->vif_list is
	 * always the main intf. All following intfs in this list
	 * are considered to be slave intfs.
	 */
	main_vif = FUNC4(ar);

	if (main_vif) {
		switch (main_vif->type) {
		case NL80211_IFTYPE_STATION:
			if (vif->type == NL80211_IFTYPE_STATION)
				break;

			/* P2P GO [master] use-case
			 * Because the P2P GO station is selected dynamically
			 * by all participating peers of a WIFI Direct network,
			 * the driver has be able to change the main interface
			 * operating mode on the fly.
			 */
			if (main_vif->p2p && vif->p2p &&
			    vif->type == NL80211_IFTYPE_AP) {
				old_main = main_vif;
				break;
			}

			err = -EBUSY;
			FUNC16();

			goto unlock;

		case NL80211_IFTYPE_MESH_POINT:
		case NL80211_IFTYPE_AP:
			if ((vif->type == NL80211_IFTYPE_STATION) ||
			    (vif->type == NL80211_IFTYPE_WDS) ||
			    (vif->type == NL80211_IFTYPE_AP) ||
			    (vif->type == NL80211_IFTYPE_MESH_POINT))
				break;

			err = -EBUSY;
			FUNC16();
			goto unlock;

		default:
			FUNC16();
			goto unlock;
		}
	}

	vif_id = FUNC2(&ar->vif_bitmap, ar->fw.vif_num, 0);

	if (vif_id < 0) {
		FUNC16();

		err = -ENOSPC;
		goto unlock;
	}

	FUNC0(ar->vif_priv[vif_id].id != vif_id);

	vif_priv->active = true;
	vif_priv->id = vif_id;
	vif_priv->enable_beacon = false;
	ar->vifs++;
	if (old_main) {
		/* We end up in here, if the main interface is being replaced.
		 * Put the new main interface at the HEAD of the list and the
		 * previous inteface will automatically become second in line.
		 */
		FUNC9(&vif_priv->list, &ar->vif_list);
	} else {
		/* Add new inteface. If the list is empty, it will become the
		 * main inteface, otherwise it will be slave.
		 */
		FUNC10(&vif_priv->list, &ar->vif_list);
	}
	FUNC14(ar->vif_priv[vif_id].vif, vif);

init:
	main_vif = FUNC4(ar);

	if (main_vif == vif) {
		FUNC14(ar->beacon_iter, vif_priv);
		FUNC16();

		if (old_main) {
			struct carl9170_vif_info *old_main_priv =
				(void *) old_main->drv_priv;
			/* downgrade old main intf to slave intf.
			 * NOTE: We are no longer under rcu_read_lock.
			 * But we are still holding ar->mutex, so the
			 * vif data [id, addr] is safe.
			 */
			err = FUNC6(ar, old_main_priv->id,
						       old_main->addr);
			if (err)
				goto unlock;
		}

		err = FUNC5(ar, vif);
		if (err)
			goto unlock;
	} else {
		FUNC16();
		err = FUNC6(ar, vif_id, vif->addr);

		if (err)
			goto unlock;
	}

	if (ar->fw.tx_seq_table) {
		err = FUNC7(ar, ar->fw.tx_seq_table + vif_id * 4,
					 0);
		if (err)
			goto unlock;
	}

unlock:
	if (err && (vif_id >= 0)) {
		vif_priv->active = false;
		FUNC3(&ar->vif_bitmap, vif_id, 0);
		ar->vifs--;
		FUNC1(ar->vif_priv[vif_id].vif, NULL);
		FUNC11(&vif_priv->list);
		FUNC13(&ar->mutex);
		FUNC19();
	} else {
		if (ar->vifs > 1)
			ar->ps.off_override |= PS_OFF_VIF;

		FUNC13(&ar->mutex);
	}

	return err;
}