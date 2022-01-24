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
typedef  int /*<<< orphan*/  u8 ;
struct mwl8k_vif {TYPE_1__* wep_key_conf; } ;
struct mwl8k_cmd_set_key {int /*<<< orphan*/  header; int /*<<< orphan*/  action; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ cipher; size_t keyidx; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MWL8K_ENCR_REMOVE_KEY ; 
 struct mwl8k_vif* FUNC0 (struct ieee80211_vif*) ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_set_key*) ; 
 struct mwl8k_cmd_set_key* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mwl8k_cmd_set_key*,int /*<<< orphan*/ *,struct ieee80211_key_conf*) ; 
 int FUNC5 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
						struct ieee80211_vif *vif,
						u8 *addr,
						struct ieee80211_key_conf *key)
{
	struct mwl8k_cmd_set_key *cmd;
	int rc;
	struct mwl8k_vif *mwl8k_vif = FUNC0(vif);

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	rc = FUNC4(cmd, addr, key);
	if (rc < 0)
		goto done;

	if (key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
			key->cipher == WLAN_CIPHER_SUITE_WEP104)
		mwl8k_vif->wep_key_conf[key->keyidx].enabled = 0;

	cmd->action = FUNC1(MWL8K_ENCR_REMOVE_KEY);

	rc = FUNC5(hw, vif, &cmd->header);
done:
	FUNC2(cmd);

	return rc;
}