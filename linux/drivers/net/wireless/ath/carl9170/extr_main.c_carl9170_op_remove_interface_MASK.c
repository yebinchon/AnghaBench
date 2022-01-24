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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_vif_info {int active; unsigned int id; int enable_beacon; int /*<<< orphan*/ * beacon; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  off_override; } ;
struct ar9170 {int vifs; int /*<<< orphan*/  mutex; TYPE_2__ ps; int /*<<< orphan*/  vif_bitmap; int /*<<< orphan*/  beacon_lock; TYPE_1__* vif_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS_OFF_VIF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*,unsigned int) ; 
 struct ieee80211_vif* FUNC5 (struct ar9170*) ; 
 int FUNC6 (struct ar9170*,struct ieee80211_vif*) ; 
 int FUNC7 (struct ar9170*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC9 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC10 (struct ar9170*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void FUNC20(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif)
{
	struct carl9170_vif_info *vif_priv = (void *) vif->drv_priv;
	struct ieee80211_vif *main_vif;
	struct ar9170 *ar = hw->priv;
	unsigned int id;

	FUNC13(&ar->mutex);

	if (FUNC2(!vif_priv->active))
		goto unlock;

	ar->vifs--;

	FUNC15();
	main_vif = FUNC5(ar);

	id = vif_priv->id;

	vif_priv->active = false;
	FUNC1(vif_priv->enable_beacon);
	vif_priv->enable_beacon = false;
	FUNC12(&vif_priv->list);
	FUNC0(ar->vif_priv[id].vif, NULL);

	if (vif == main_vif) {
		FUNC16();

		if (ar->vifs) {
			FUNC1(FUNC6(ar,
					FUNC5(ar)));
		} else {
			FUNC9(ar);
		}
	} else {
		FUNC16();

		FUNC1(FUNC7(ar, id, NULL));
	}

	FUNC10(ar, false);
	FUNC4(ar, id);

	FUNC17(&ar->beacon_lock);
	FUNC11(vif_priv->beacon);
	vif_priv->beacon = NULL;
	FUNC18(&ar->beacon_lock);

	FUNC3(&ar->vif_bitmap, id, 0);

	FUNC8(ar);

	if (ar->vifs == 1)
		ar->ps.off_override &= ~PS_OFF_VIF;

unlock:
	FUNC14(&ar->mutex);

	FUNC19();
}