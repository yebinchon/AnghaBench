#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vif {int const type; int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath9k_htc_vif {int index; } ;
struct ath9k_htc_target_vif {int index; int /*<<< orphan*/  rtsthreshold; int /*<<< orphan*/  opmode; int /*<<< orphan*/  myaddr; } ;
struct ath9k_htc_priv {int vif_slot; int /*<<< orphan*/  mutex; TYPE_1__* ah; int /*<<< orphan*/  nvifs; } ;
struct TYPE_3__ {int const opmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_ANI_RUN ; 
 int /*<<< orphan*/  CONFIG ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HTC_M_HOSTAP ; 
 int /*<<< orphan*/  HTC_M_IBSS ; 
 int /*<<< orphan*/  HTC_M_STA ; 
 int /*<<< orphan*/  HTC_M_WDS ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*,int const) ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_MESH_POINT 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ath9k_htc_target_vif*) ; 
 int /*<<< orphan*/  WMI_VAP_CREATE_CMDID ; 
 int /*<<< orphan*/  WMI_VAP_REMOVE_CMDID ; 
 int FUNC2 (struct ath9k_htc_priv*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_htc_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int /*<<< orphan*/ ,char*,int const,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,char*,int const) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ath9k_htc_target_vif*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath9k_htc_vif *avp = (void *)vif->drv_priv;
	struct ath_common *common = FUNC9(priv->ah);
	struct ath9k_htc_target_vif hvif;
	int ret = 0;
	u8 cmd_rsp;

	FUNC17(&priv->mutex);

	FUNC5(priv);
	FUNC16(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
	FUNC15(&hvif.myaddr, vif->addr, ETH_ALEN);

	switch (vif->type) {
	case NL80211_IFTYPE_STATION:
		hvif.opmode = HTC_M_STA;
		break;
	case NL80211_IFTYPE_ADHOC:
		hvif.opmode = HTC_M_IBSS;
		break;
	case NL80211_IFTYPE_AP:
		hvif.opmode = HTC_M_HOSTAP;
		break;
	case NL80211_IFTYPE_MESH_POINT:
		hvif.opmode = HTC_M_WDS;	/* close enough */
		break;
	default:
		FUNC12(common,
			"Interface type %d not yet supported\n", vif->type);
		ret = -EOPNOTSUPP;
		goto out;
	}

	/* Index starts from zero on the target */
	avp->index = hvif.index = FUNC14(priv->vif_slot);
	hvif.rtsthreshold = FUNC13(2304);
	FUNC1(WMI_VAP_CREATE_CMDID, &hvif);
	if (ret)
		goto out;

	/*
	 * We need a node in target to tx mgmt frames
	 * before association.
	 */
	ret = FUNC2(priv, vif, NULL);
	if (ret) {
		FUNC1(WMI_VAP_REMOVE_CMDID, &hvif);
		goto out;
	}

	FUNC6(priv, vif);

	priv->vif_slot |= (1 << avp->index);
	priv->nvifs++;

	FUNC0(priv, vif->type);

	if ((vif->type == NL80211_IFTYPE_AP) ||
	    (vif->type == NL80211_IFTYPE_MESH_POINT) ||
	    (vif->type == NL80211_IFTYPE_ADHOC))
		FUNC3(priv, vif);

	FUNC7(priv);

	if ((priv->ah->opmode == NL80211_IFTYPE_AP) &&
	    !FUNC19(ATH_OP_ANI_RUN, &common->op_flags)) {
		FUNC10(priv->ah, true);
		FUNC8(priv);
	}

	FUNC11(common, CONFIG, "Attach a VIF of type: %d at idx: %d\n",
		vif->type, avp->index);

out:
	FUNC4(priv);
	FUNC18(&priv->mutex);

	return ret;
}