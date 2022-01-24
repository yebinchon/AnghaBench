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
typedef  int /*<<< orphan*/  u8 ;
struct ath_common {int /*<<< orphan*/  macaddr; } ;
struct ath9k_htc_target_vif {int index; int /*<<< orphan*/  myaddr; } ;
struct ath9k_htc_priv {int mon_vif_idx; int vif_slot; int /*<<< orphan*/  nvifs; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ath9k_htc_target_vif*) ; 
 int /*<<< orphan*/  WMI_VAP_REMOVE_CMDID ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_target_vif*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ath9k_htc_priv *priv)
{
	struct ath_common *common = FUNC1(priv->ah);
	struct ath9k_htc_target_vif hvif;
	int ret = 0;
	u8 cmd_rsp;

	FUNC4(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
	FUNC3(&hvif.myaddr, common->macaddr, ETH_ALEN);
	hvif.index = priv->mon_vif_idx;
	FUNC0(WMI_VAP_REMOVE_CMDID, &hvif);
	if (ret) {
		FUNC2(common, "Unable to remove monitor interface at idx: %d\n",
			priv->mon_vif_idx);
	}

	priv->nvifs--;
	priv->vif_slot &= ~(1 << priv->mon_vif_idx);
}